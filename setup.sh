# install xcode build tools

xcode-select --install

# install homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update

cd ~

# install homebrew formulae
curl -O https://raw.githubusercontent.com/mikerooksby/mac-setup/main/brew-formulae.txt

brew install brew-formulae.txt

# install homebrew casks
curl -O https://raw.githubusercontent.com/mikerooksby/mac-setup/main/brew-casks.txt

brew install brew-casks.txt

# change shell to bash

chsh -s /usr/local/bin/bash

# setup bash_profile and other dot files

curl -O https://raw.githubusercontent.com/mikerooksby/mac-setup/main/.bash_profile

curl -O https://github.com/w3cj/dotfiles/blob/master/.gitignore

# configure git

git config --global user.name Mike Rooksby Jr

git config --global user.email mike@rooksbywebdev.com

git config --global core.editor nano

# install node version manager

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/HEAD/install.sh | bash

nvm install --lts --latest-npm

# global npm installs

nvm use --lts
npm install -g lite-server gitignore license

# create dev folder

mkdir ~/Developer