# install xcode build tools

echo installing xcode tools...

xcode-select --install

# install homebrew

echo installing homebrew...

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update

cd ~

# install homebrew formulae

echo installing homebrew formulae...

curl -O https://raw.githubusercontent.com/mikerooksby/mac-setup/main/brew-formulae.txt

brew install $( < brew-formulae.txt )

# install homebrew casks

echo installing homebrew casks...

curl -O https://raw.githubusercontent.com/mikerooksby/mac-setup/main/brew-casks.txt

brew install $( < brew-casks.txt )

# change shell to bash

echo setting up bash...

chsh -s /usr/local/bin/bash

# setup bash_profile and other dot files

curl -O https://raw.githubusercontent.com/mikerooksby/mac-setup/main/.bash_profile

curl -O https://github.com/w3cj/dotfiles/blob/master/.gitignore

# configure git

echo configuring git...

git config --global user.name Mike Rooksby Jr

git config --global user.email mike@rooksbywebdev.com

git config --global core.editor nano

# install node version manager

echo installing nvm...

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/HEAD/install.sh | bash

nvm install --lts --latest-npm

# global npm installs

echo installing global npm packages...

nvm use --lts
npm install -g lite-server gitignore license

# create dev folder

echo creating dev folder...

mkdir ~/Developer