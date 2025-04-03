# self update(.tcshrc) and zshrc files
cd ~/zshrc-M3Pro

git reset --hard HEAD
git pull

cp ./.zshrc ~/.zshrc
cp ./.export ~/.export

cd

# > export
source ".export"

# >>> pyenv

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"
eval "$(pyenv init -)" # using eval to hide ouputs 

# <<< 


# >>> pyenv-virtualenv

eval "$(pyenv virtualenv-init -)"

# <<<
