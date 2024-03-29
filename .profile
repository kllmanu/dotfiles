# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


# Added by Toolbox App
export PATH="$PATH:/home/manu/.local/share/JetBrains/Toolbox/scripts"
export PATH="$PATH:/home/manu/anaconda3/bin"
export PATH="/home/manu/Desktop/bin:$PATH"

export EDITOR="vim"
export NNN_COLORS="5623"
export LEDGER_FILE="$HOME/Documents/hledger.journal"
export PASSWORD_STORE_DIR="$HOME/Desktop/pass"
export JUPYTERLAB_DIR=$HOME/.local/share/jupyter/lab

