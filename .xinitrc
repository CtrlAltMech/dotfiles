#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script

# Start DBUS
eval "$(dbus-launch --sh-syntax --exit-with-session)"

# Start ssh agent and add my main arboghast key
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed_arboghast
fi

# Launch gpg-agent
gpgconf --launch gpg-agent

# Start i3wm
exec i3

