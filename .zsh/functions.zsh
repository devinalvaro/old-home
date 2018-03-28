# gitignore.io
function gi() { curl -L -s https://www.gitignore.io/api/$@; }

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
