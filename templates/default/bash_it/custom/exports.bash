# Set the default editor
if [ -f /usr/local/bin/subl ]; then
    export EDITOR='subl -w'
elif [ -f /usr/local/bin/mate ]; then
    export EDITOR='mate'
    export GIT_EDITOR='mate -wl1'
else
    export EDITOR="vim"
fi
# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"
# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
#export PROMPT_COMMAND="history -a; history -c; history -r; echo -ne \"\033]0;${USER}@${HOSTNAME}\007\"; $PROMPT_COMMAND"

#export PGHOST=/var/run/postgresql/

# no ._ files in archives please
export COPYFILE_DISABLE=true

export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH

#Set TZ using already configured system setting
#systemsetup -gettimezone | sed 's/Time\ Zone:\ //g' | xargs sh -c "export TZ='$1'"
export TZ='Asia/Shanghai'

# fix multibyte errors in ruby 1.9.x
export RUBYOPT='-Ku'

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
