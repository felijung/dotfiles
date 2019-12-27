#normal bash-stuff, not included

#pass-alias, to have two seperate stores
alias passasta="PASSWORD_STORE_DIR=~/.password-store/asta-pass"
alias passme="PASSWORD_STORE_DIR=~/internetexplorer/.password-store"

#command: borg_full full os backup with borg (ex /mnt)
borg_full(){
borg_comment=$1;
repo=full-system;
sudo borg --progress --verbose \
create --comment "Use as root. $borg_comment" \
-e /dev -e /run -e /tmp -e /sys -e /proc -e /mnt -e /media -e /var/log -s \
/mnt/backups/borg/repos/$HOSTNAME::\{hostname\}+\{user\}:\{now:%Y-%m-%dT%H:%M\} /;
}
