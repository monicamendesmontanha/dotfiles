dotfiles
========

## Pre setup

_This is a copy from [GitHub SSH key generation](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent). I put everything here to simplify things, but all the credit and thanks goes to GitHub team._

### Generating a new SSH key

Paste the text below, substituting in your GitHub email address.

```
ssh-keygen -t ed25519 -C "your_email@example.com"
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
eval "$(ssh-agent -s)"
> Agent pid 59566
```
If you're using macOS Sierra 10.12.2 or later, you will need to modify your ~/.ssh/config file to automatically load keys into the ssh-agent and store passphrases in your keychain.

First, check to see if your ~/.ssh/config file exists in the default location.

```
open ~/.ssh/config
> The file /Users/YOU/.ssh/config does not exist.
```

If the file doesn't exist, create the file.
```
touch ~/.ssh/config
```

Open your `~/.ssh/config` file, then modify the file to contain the following lines. If your SSH key file has a different name or path than the example code, modify the filename or path to match your current setup.

```
open ~/.ssh/config
```

```
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

Add your SSH private key to the ssh-agent and store your passphrase in the keychain. If you created your key with a different name, or if you are adding an existing key that has a different name, replace id_ed25519 in the command with the name of your private key file.

```
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

_More details [here](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)_

### Add the SSH key to your GitHub account.

Copy the SSH key to your clipboard.

If your SSH public key file has a different name than the example code, modify the filename to match your current setup. When copying your key, don't add any newlines or whitespace.

```
pbcopy < ~/.ssh/id_ed25519.pub
# Copies the contents of the id_ed25519.pub file to your clipboard
```

In the upper-right corner of any page on GitHub, click your profile photo, then click  Settings.

In the "Access" section of the sidebar, click  SSH and GPG keys.

Click New SSH key or Add SSH key.

In the "Title" field, add a descriptive label for the new key. For example, if you're using a personal laptop, you might call this key "Personal laptop".

In the "Key" field, paste your public key.

Click Add SSH key.

_More details [here](https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account)_

## Setup

### 1. Clone this repository

```
git clone git@github.com:monicamendesmontanha/dotfiles.git
```

### 2. Install homebrew

You can run the command below in any directory given it will install `homebrew` for you:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 3. Install brew bundle

Now you must navigate to where you clone the `dotfiles` repository:

```
cd dotfiles
brew bundle --file=brew/Brewfile
```

### 4. Install zshell

Once you are already inside `dotfiles`, you can run the command below to install `zshell`:


```
./zshell/install.sh
```

### 5. Copy vscode settings & extensions config


```
./vscode/install.sh
```