#!/bin/tcsh
#
# .tcshrc
#

# # add carog to the path
# . "$HOME/.cargo/env"

# add the home /bin directory to the path
# use the tcsh equivalent of bash's export
setenv PATH "$HOME/bin:$PATH"

# echo to stderr
echo "Loaded: Jonah Y-M's .tcshrc file"

umask 066
set path=(/bin /usr/bin /usr/local/bin /opt/sfw/bin /usr/sfw/bin /usr/ucb /usr/openwin/bin /etc ~/cni/bin .)
set prompt="%n@%m:%~%# "
if ( $?prompt ) then
        set history=32
endif


alias vi vim
 
if (-e cadsetup) then
  source cadsetup
endif




