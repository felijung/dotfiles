# dotfiles
some of my configurations to dotfiles in my home

If passwordstore shall be transfered to another laptop:
find key belonging to key.id, make into file and copy to stick etc.:
gpg --list-secret-keys
gpg --export-secret-keys <key.id> > <private.key>
cp <private.key> <path/to/stick>
copy password-data from old laptopto new laptop.
on new laptop:
gpg --import <private.key>

most of the things written in this repo do not qualifiy as work and therefore copyright does not apply, so you are free to use. 
if copyright does apply, and nothing else is stated in the file, the work is licensed under creative commons 0 and therefore free to use.
