complete -cf sudo

export EDITOR=vim
export VISUAL=vim

#prompt
nrm='\[\e[39m\]'
cyn='\[\e[36m\]'
grn='\[\e[32m\]'
PS1="$cyn[$nrm\W$cyn]$nrml$grn > $nrm"
