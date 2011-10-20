# Copyright: a.yasui <a.yasui+dot@gmail.com>

alias ll='ls -al'
alias ls='ls -aG'

export CVS_RSH=ssh

pathes="/usr/local/bin /usr/local/sbin /opt/local/bin /sw/bin ${HOME}/bin ${HOME}/perls ${HOME}/shells ${HOME}/python ${HOME}/Develop/depot_tools/ /Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/"
for v in $pathes; do
    if [ -e $v ]; then
        export PATH="$PATH:$v"
	fi
done

_app='/Applications'
if [ -d $_app ]; then
	apps=`ls -d ${_app}/* | grep .app | sed -e /\\/Applications\\/// -e s/\\///g -e s/\ /_/g -e s/\.app//g`
	for app in $apps; do
		if [ -d ${_app}/${app}.app ]; then
			alias ${app}="open -a ${app}"
		else
			name=`echo $app | sed -e s/_/\ /g`
			if [ -d "${app}/${name}.app" ]; then
				alias ${name}="open -a ${name}"
			fi
		fi
	done
fi


# Bind key setup
bind '^W:backward-kill-word'


export PS1='[\e[0;36m\u\e[m@\e[0;31m\h\e[m: \e[0;32m\w\e[m][\e[0;34m\A\e[m] $'

