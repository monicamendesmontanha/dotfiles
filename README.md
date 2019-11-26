dotfiles
========

## Pre setup

_This is a copy from [GitHub SSH key generation](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent). I put everything here to simplify things, but all the credit and thanks goes to GitHub team._

### Generating a new SSH key

Paste the text below, substituting in your GitHub email address.

```
$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

This creates a new ssh key, using the provided email as a label.

```
> Generating public/private rsa key pair.
```

When you're prompted to "Enter a file in which to save the key," press Enter. This accepts the default file location.

```
> Enter a file in which to save the key (/Users/you/.ssh/id_rsa): [Press enter]
```

### Adding your SSH key to the ssh-agent

Before adding a new SSH key to the ssh-agent to manage your keys, you should have checked for existing SSH keys and generated a new SSH key. When adding your SSH key to the agent, use the default macOS ssh-add command, and not an application installed by macports, homebrew, or some other external source.

Start the ssh-agent in the background.

```
$ eval "$(ssh-agent -s)"
> Agent pid 59566
```

If you're using macOS Sierra 10.12.2 or later, you will need to modify your ~/.ssh/config file to automatically load keys into the ssh-agent and store passphrases in your keychain.

```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```

Add your SSH private key to the ssh-agent and store your passphrase in the keychain. If you created your key with a different name, or if you are adding an existing key that has a different name, replace id_rsa in the command with the name of your private key file.

```
$ ssh-add -K ~/.ssh/id_rsa
```

_More details [here](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)_

### Add the SSH key to your GitHub account.

Copy the SSH key to your clipboard.

If your SSH key file has a different name than the example code, modify the filename to match your current setup. When copying your key, don't add any newlines or whitespace.

```
$ pbcopy < ~/.ssh/id_rsa.pub
# Copies the contents of the id_rsa.pub file to your clipboard
```

_More details [here](https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account)_

## Setup

### 1. Clone this repository

```
$ git clone git@github.com:monicamendesmontanha/dotfiles.git
```

### 2. Install homebrew

You can run the command below in any directory given it will run `ruby` to install `homebrew` for you:

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### 3. Install brew bundle

Now you must navigate to where you clone the `dotfiles` repository:

```
$ cd dotfiles
$ brew bundle --file=brew/Brewfile
```

### 4. Install zshell

Once you are already inside `dotfiles`, you can run the command below to install `zshell`:


```
$ ./zshell/install.sh
```

### 5. Copy vscode settings & extensions config


```
$ ./vscode/install.sh
```