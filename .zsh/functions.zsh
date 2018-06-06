# cd
function up() {
  for _ in $(seq 1 $1);
     do
       cd ..
     done
}

# clipboard
function paste() {
    if type "xclip" > /dev/null 2>&1; then
        xclip -out -selection clipboard
    elif type"xsel" > /dev/null 2>&1; then
        xsel --output --clipboard
    fi
}

function yank() {
    if type "xclip" > /dev/null 2>&1; then
        xclip -in -selection clipboard
    elif type"xsel" > /dev/null 2>&1; then
        xsel --input --clipboard
    fi
}

# gitignore.io
function gi() { curl -L -s https://www.gitignore.io/api/$@; }

# truecolor
function truecolor() {
    awk 'BEGIN{
        s="/\\/\\/\\/\\/\\"; s=s s s s s s s s s s s s s s s s s s s s s s s;
        for (colnum = 0; colnum<256; colnum++) {
            r = 255-(colnum*255/255);
            g = (colnum*510/255);
            b = (colnum*255/255);
            if (g>255) g = 510-g;
            printf "\033[48;2;%d;%d;%dm", r,g,b;
            printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
            printf "%s\033[0m", substr(s,colnum+1,1);
        }
        printf "\n";
    }'
}

# virtualenv
function activate() {
    dir=$1

    venv_dirs=('.env' '.venv' 'env' 'venv' 'ENV' 'env.bak' 'venv.bak')
    for venv_dir in ${venv_dirs}; do
        if [ -z $dir ] && [ -d $venv_dir ]; then
            dir=$venv_dir
        fi
    done

    if [ ! -z $dir ]; then
        source $dir/bin/activate;
    else
        echo "No virtualenv directory detected."
    fi
}
