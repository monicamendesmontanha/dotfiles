dotfiles
========

### Setup

1. Clone this repository

```
$ git clone https://github.com/monicamendesmontanha/dotfiles.git
```

1. Install homebrew

You can run the command below in any directory given it will run `ruby` to install `homebrew` for you:

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

2. Install brew bundle

Now you must navigate to where you clone the `dotfiles` repository:

```
$ cd dotfiles
$ brew bundle dump --file=brew/Brewfile
```

3. Install zshell

Once you are already inside `dotfiles`, you can run the command below to install `zshell`:


```
$ ./zshell/install.sh
```

3. Copy vscode settings & extensions config


```
$ ./vscode/install.sh
```