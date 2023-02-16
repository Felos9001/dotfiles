# Steps to bootstrap a new Mac
Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.
```
xcode-select --install
```
Clone repo into new hidden directory.
### Use SSH (if set up)...
```
git clone https://github.com/Felos9001/dotfiles.git ~/.dotfiles
```
### ...or use HTTPS and switch remotes later.
```
git clone https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds.git ~/.dotfiles
```
Create symlinks in the Home directory to the real files in the repo.
```
# There are better and less manual ways to do this;
# investigate install scripts and bootstrapping tools.

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```
Install Homebrew, followed by the software listed in the Brewfile.
```
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile

# ...or move to the directory first.
cd ~/.dotfiles && brew bundle
```
## TODO List
+ Learn how to use defaults to record and restore System Preferences and other macOS configurations.
+ Organize these growing steps into multiple script files.
+ Automate symlinking and run script files with a bootstrapping tool like Dotbot.
+ Revisit the list in .zshrc to customize the shell.
+ Make a checklist of steps to decommission your computer before wiping your hard drive.
+ Create a bootable USB installer for macOS.
+ Integrate other cloud services into your Dotfiles process (Dropbox, Google Drive, etc.).
+ Find inspiration and examples in other Dotfiles repositories at dotfiles.github.io.
+ And last, but hopefully not least, take my course, Dotfiles from Start to Finish-ish!
