# Copyright: a.yasui <a.yasui+dot@gmail.com>

setenv CVS_RSH ssh
if ( -f /sw/bin/init.csh ) then
	source /sw/bin/init.csh
	setenv PATH "/usr/local/emacs/bin /bin /sbin /usr/bin /usr/sbin /usr/local/bin ~/bin"
endif

if (! $?DISPLAY) then
   setenv DISPLAY :0.0
endif

setenv LC_ALL ja_JP.UTF-8
setenv LANG ja_JP.UTF-8
#unsetenv LANG
#alias jp setenv LANG ja_JP.eucJP
#alias eng unsetenv LANG

#
# Your previous .cshrc (if any) is saved as .cshrc.dpsaved
# Setting the path for DarwinPorts.
set path=(/opt/local/bin /opt/local/sbin $path)

set history  =  90000
set savehist = (90000 merge)

# watch to login/logout
set watch = (any any)
