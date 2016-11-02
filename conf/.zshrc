export UNAME=$(uname)

# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
export LANG=en_US.UTF-8
if [[ $UNAME = Linux ]]; then
	export LC_ALL=en_US.UTF-8
    
    # Thefuck
    which fuck > /dev/null
    if [ $? -eq 0 ]; then
        eval "$(thefuck --alias)"
    fi

elif [[ $UNAME = Darwin ]]; then

    #Thefuck
    which fuck > /dev/null
    if [ $? -eq 0 ]; then
        eval "$(thefuck --alias)"
    fi

	export LC_ALL=$LANG
    # Load pyenv
    eval "$(pyenv init -)"
fi
#################################
# Set Proxy for Shadowsocks
#################################
# set Shadowsocks Proxy by default
if [[ $UNAME = Darwin ]]; then
#	export ALL_PROXY=socks5://localhost:1080
fi

function setss() {
	export ALL_PROXY=socks5://localhost:1080
}
function unsetss() {
	unset ALL_PROXY
}

#################################
# antigen settings
#################################
if [[ $UNAME = Darwin ]]; then
	source $(brew --prefix)/share/antigen/antigen.zsh
elif [[ $UNAME = Linux ]]; then
	source /usr/share/zsh-antigen/antigen.zsh
else
	export ANTIGEN="$HOME/antigen"
	source $ANTIGEN/antigen.zsh
fi

antigen use oh-my-zsh

# Antigen Bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git

# Load the theme
if [[ $UNAME = Darwin ]]; then
	antigen theme bureau
else
	antigen theme ys
fi

# Hide 'user@hostname' info when logged in as 'essethon'
[[ -n "$SSH_CLIENT" ]] || export DEFAULT_USER="essethon"

antigen apply

if [[ $UNAME = Darwin ]]; then
	alias ipv6="sudo /Users/essethon/Dev/MyConfig/thu6tunnel.sh"
	alias macvim="mvim"
elif [[ $UNAME = Linux ]]; then
	alias ipv6="sudo /home/essethon/Github/MyConfig/thu6tunnel-linux.sh"
fi

