# Copyright: a.yasui <a.yasui+dot@gmail.com>

# alias
setopt complete_aliases

alias ls='/bin/ls -aG'
alias ll='ls -al'

# keybind
bindkey -e

bindkey '^W' backward-kill-word
 
# historical backward/forward search with linehead string binded to ^P/^N
#
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# Zsh history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

#prompt
autoload colors
colors

# sudo でも補完の対象
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin


# prompt.
# show this: [<username>@<host>: ~][00:11] $ 
PROMPT="[%{${fg[cyan]}%}%n%{${reset_color}%}@%{${fg[red]}%}%m%{${reset_color}%}: %{${fg[green]}%}%~%{${reset_color}%}][%{${fg[blue]}%}%T%{${reset_color}%}] $ "
