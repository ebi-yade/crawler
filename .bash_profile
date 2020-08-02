# .bash_profile for local AmazonLinux2 Container

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# Redirect Stdout and Stderr to Docker Host
#exec 1>/dev/pts/0
#exec 2>&1

# Golang Config

export GOPATH=$HOME/go

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME

export PATH