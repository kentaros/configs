# git completion
source ~/.git-completion.bash # copied from /Library/Developer/CommandLineTools/usr/share/git-core/
source ~/.git-prompt.sh       # copied from /Library/Developer/CommandLineTools/usr/share/git-core/

#export PS1="\[\e[1;36m\][\u@\h \W]\\$ \[\e[m\]"
GIT_PS1_SHOWDIRTYSTATE=true
#export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '



# on history
function share_history_among_terminals {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history_among_terminals'
shopt -u histappend
export HISTSIZE=9999
HISTTIMEFORMAT='%Y%m%d %T ';

# alias
alias srcbashrc="source ~/.bashrc"
alias ls="ls -laG"
