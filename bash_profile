if [ -f /etc/bash_completion.d/git ]; then
   . /etc/bash_completion.d/git
elif [ -f ${HOME}/.git_profile ]; then
   . ${HOME}/.git_profile
else
   echo > /dev/null
fi

set -o vi

ENV=${HOME}/.bashrc
EDITOR=vim
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

export  ENV EDITOR PS1
