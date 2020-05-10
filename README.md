##### Cloud Build Toolkit 
##### Git Demo for Victory
##### Requirements
* MAC IOS
* Vagrant
* VirtualBox
* vagrant-share

#### Installing Homebrew on a Mac
* ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#### Install Virtualbox && Vagrant for MacOSX

# Install Virtualbox && Vagrant for MacOSX

Vagrant uses Virtualbox to manage the virtual dependencies. You can directly download virtualbox and install or use homebrew for it.

```sh
$ brew cask install virtualbox
```

Now install Vagrant either from the website or use homebrew for installing it.

```sh
$ brew cask install vagrant
```

Vagrant-Manager helps you manage all your virtual machines in one place directly from the menubar.

```sh
$ brew cask install vagrant-manager
```

#### Install Install Virtualbox && Vagrant for Windows
* Oracle VirtualBox
* https://www.virtualbox.org/wiki/Downloads

* Vagrant
* https://www.vagrantup.com/downloads.html

Usage
Now lets start the machine using the following command.

```
$ sh builder.sh
```

How to print a file, excluding comments and blank lines, using grep?
```
$ grep -v '^\s*\(#\|$\)' "file" 
$ grep -v '^\s*\(#\|$\)' vagrant/machines/builder/Vagrantfile.bk
```
