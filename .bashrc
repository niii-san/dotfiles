
# ~/.bashrc
#



# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi
bind -m vi-insert "\C-l":clear-screen


## Modules
configs="$HOME/.config/bashconfigs/"
# Environment variables
source "$configs/env.sh"





alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '



#### ALIAS
alias ll="ls -alh"
alias net="nmtui"

alias fm="yazi"

alias stat="btop"





##################################
### custom functions
ff(){
clear
fastfetch
}

quote(){
    fortune -a | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n
}


dev(){
cd /media/dev
}

personal(){
    cd /media/personal
}

work(){
    cd /media/work
}

collage(){
    cd /media/collage
}

# badapple(){
    # cd ~/funs/Bad-Apple-Terminal
    # npm start
# }


run_pgadmin(){
    cd ~/pgadmin4
    echo "Activating python virtual environment"
    source venv/bin/activate
    echo "virtual environment activated " $VIRTUAL_ENV 
    which python
    sleep 3
    python3 web/pgAdmin4.py
}


eval "$(starship init bash)"
 # Set up fzf key bindings and fuzzy completion
#eval "$(fzf --bash)"


# Execute on shell load







