#!/bin/sh

UNAME=$(uname) # 
CURDIR=$(cd `dirname $0`; pwd) # 
RCFILES=$CURDIR/conf # 
VIMCOLORS=$CURDIR/.vim/colors # 
SSH=$CURDIR/.ssh #
OSXRC=$CURDIR/conf.osx
LINUXRC=$CURDIR/conf.linux


########################################
# .*rc files
########################################
for FILE in `ls -A $RCFILES`
do
    ln -sf $RCFILES/$FILE $HOME/$FILE
    if [ "$?" = "0" ]; then
        echo "$FILE soft linked to $HOME/$FILE"
    else :
#			echo "$FILE link failed."
    fi
	#fi
done

echo " " 

if [ "$UNAME" = "Darwin" ]; then
	echo "UNAME = Darwin."
	for FILE in `ls -A $OSXRC`
	do
		ln -sf $OSXRC/$FILE $HOME/$FILE
		if [ "$?" = "0" ]; then
			echo "$FILE soft linked to $HOME/$FILE"
		else :
		#	echo "$FILE link failed."
		fi
	done

elif [ "$UNAME" = "Linux" ]; then
	echo "UNAME = Linux"
	for FILE in `ls -A $LINUXRC`
	do
		ln -sf $LINUXRC/$FILE $HOME/$FILE
		if [ "$?" = "0" ]; then
			echo "$FILE soft linked to $HOME/$FILE"
		else :
		#	echo "$FILE link failed."
		fi
	done
else :
fi


########################################
# SSH Config
########################################
for FILE in `ls -A $SSH`
do
	ln -sf $SSH/$FILE $HOME/.ssh/$FILE
	if [ "$?" = "0" ]; then
		echo "$FILE soft linked to $HOME/.ssh/$FILE"
	else :
#			echo "$FILE link failed."
	fi
done

########################################
# Vundle
########################################
if [ ! -d "$HOME/.vim/bundle" ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
	echo " "
	echo "---------------------"
	echo "Vundle already installed."
	echo "---------------------"
	echo " "
fi

########################################
# Vim colors
########################################

if [ ! -d "$HOME/.vim/colors" ]; then 
	mkdir $HOME/.vim/colors # make dir
	if [ "$?" = "0" ]; then
		echo "Dir ~/.vim/colors created"
	else :
	#	echo "Dir ~/.vim/colors exists"
	fi
else
	echo "Folder ~/.vim/colors exists"
fi

for FILE in `ls $VIMCOLORS`
do
	cp -f $VIMCOLORS/$FILE $HOME/.vim/colors/$FILE
	if [ "$?" = "0" ]; then
		echo "$FILE copied to ~/.vim/colors/$FILE"
	else :
#		echo "$FILE link failed."
	fi
done


