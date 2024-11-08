
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '



#### ALIAS
alias nv="nvim"

alias ll="ls -alh"





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
    clear
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


run_postgresql(){
    cd ~/pgadmin4
    echo "Activating python virtual environment"
    source postgres-venv/bin/activate
    echo "virtual environment activated " $VIRTUAL_ENV 
    which python
    sleep 3
    python3 web/pgAdmin4.py
}






 eval "$(starship init bash)"

 # Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

