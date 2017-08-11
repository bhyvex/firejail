# Firejail profile for qlipper
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/qlipper.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.config/Qlipper

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
no3d
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix
seccomp
shell none

disable-mnt
private-dev
private-tmp

noexec ${HOME}
noexec /tmp
