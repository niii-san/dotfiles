
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi
bind -m vi-insert "\C-l":clear-screen

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '



#### ALIAS
alias nv="nvim"

alias ll="ls -alh"
alias net="nmtui"

alias fm="nnn"

alias stat="btop"





##################################
### custom functions
home(){
    cd ~
}

ff(){
clear
fastfetch
}

quote(){
    cowthink $(fortune -s)
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



