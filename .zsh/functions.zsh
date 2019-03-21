# ctrl-z
function ctrl-z () {
    if [[ "$#BUFFER" -eq 0 ]]; then
        BUFFER="fg"
        zle accept-line
    else
        zle push-input
        zle clear-screen
    fi
}
zle -N ctrl-z
bindkey '^Z' ctrl-z

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
    dir="$1"

    venv_dirs=( '.env' '.venv' 'env' 'venv' 'ENV' )
    for venv_dir in "${venv_dirs[@]}"; do
        if [ -z "$dir" ] && [ -d "$venv_dir" ]; then
            dir="$venv_dir"
        fi
    done

    if [ ! -z "$dir" ]; then
        source "$dir/bin/activate"
    else
        echo "No virtualenv directory detected."
    fi
}
