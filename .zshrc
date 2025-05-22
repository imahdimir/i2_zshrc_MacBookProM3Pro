# Update setup repo from Github base

repo=i2_zshrc_MacBookProM3Pro

echo "\n\nUpdating .zshrc from https://github.com/$repo\n\n"

cd ~/$repo

git reset --hard HEAD
git pull

cp ./.zshrc ~/.zshrc

cd 


source "$repo/.export"


# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"
eval "$(pyenv init -)" # using eval to hide ouputs 

eval "$(pyenv virtualenv-init -)"

# Anaconda
export PATH="/opt/anaconda3/bin:$PATH"

# >>> conda initialize >>>
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then. "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

