#normal bash-stuff, not included

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# some more ls aliases
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'

#pass-alias, to have two seperate stores
alias passjob="PASSWORD_STORE_DIR=~/git/job/ pass"
alias passme="PASSWORD_STORE_DIR=~/.pass/me/ pass"


#command: borg_full full os backup with borg (ex /mnt)
borg_full(){
borg_comment=$1;
repo=full-system;
sudo borg --progress --verbose \
create --comment "Use as root. $borg_comment" \
-e /dev -e /run -e /tmp -e /sys -e /proc -e /mnt -e /media -e /var/log -s \
/mnt/backups/borg/repos/$HOSTNAME::\{hostname\}+\{user\}:\{now:%Y-%m-%dT%H:%M\} /;
}
