# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

GVFS_DISABLE_FUSE=1
export GVFS_DISABLE_FUSE

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

SSH_ENV="$HOME/.ssh/environment"

function start_agent {
	#echo "Initialising new SSH agent..."
	/usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
	chmod 600 "${SSH_ENV}"
	. "${SSH_ENV}" > /dev/null
	if [ -f ${HOME}/.ssh/gh_fast ]; then
		/usr/bin/ssh-add ${HOME}/.ssh/gh_fast > /dev/null
	fi
	if [ -f ${HOME}/.ssh/bb_acer ]; then
		/usr/bin/ssh-add ${HOME}/.ssh/bb_acer > /dev/null
	fi
	if [ -f ${HOME}/.ssh/predator ]; then
		/usr/bin/ssh-add ${HOME}/.ssh/predator > /dev/null
	fi
}

# Source SSH settings, if applicable

if [ ! -d "$HOME/.ssh" ]; then
	mkdir "$HOME/.ssh"
	chmod 700 "$HOME/.ssh"
fi

if [ -f "${SSH_ENV}" ]; then
	. "${SSH_ENV}" > /dev/null
	ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
		start_agent;
	}
else
	start_agent;
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

export PATH=$PATH:$HOME/.bar
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

