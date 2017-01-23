export NVM_DIR="$HOME/.nvm"

install_nvm() {
  git clone https://github.com/creationix/nvm "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
  . "$NVM_DIR/nvm.sh"
}

if [ ! -d  "$NVM_DIR" ]
then
  install_nvm
fi

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

