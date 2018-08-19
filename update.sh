#!/usr/bin/zsh
USER=$(whoami)
BACT=$(date +%d%m%y)
PREV=$(cat /etc/hikkacuteafprev)
if [ "$1" = "restore" ]
then
	if [ -z "$2" ]
	then
		echo 'Sowwwy I disappointed you! ( ´•̥̥̥ω•̥̥̥` ) Restoring backup from previous backup.'
			cd ./backup/backup-$PREV
			cp .Xresources ~/.Xresources	
			cp -r i3/ ~/.config/i3/
			cp .zshrc ~/.zshrc
			echo 'You need to be superuser to restore those! (￣ω￣;)'
			sudo cp i3status.conf /etc/
			sudo cp zsh_command_not_found /etc/zsh_command_not_found
	else
		echo 'Sowwwy I disappointed you! ( ´•̥̥̥ω•̥̥̥` ) Restoring backup from' $2
		if ls ./backup/backup-$2 > /dev/null 2>&1
		then
			cd ./backup/backup-$2	
			cp .Xresources ~/.Xresources
			cp -r i3/ ~/.config/i3/
			cp .zshrc ~/.zshrc
			echo 'You need to be superuser to restore those! (￣ω￣;)'
			sudo cp i3status.conf /etc/
			sudo cp zsh_command_not_found /etc/zsh_command_not_found
		else
			echo 'There is so such backup, b-bakka! >w<`'
		fi
	fi
else
	echo 'hikkaCuteAF update tool. Note that this will replace all your files, but you can use restore.sh to restore from backup. Have fun! (^owo^)ﾉ' | lolcat
	if [ "$1" = "nobak" ]
	then
		echo 'Backup ignored.'
	else
		echo 'Let me make a backup, oni-chan!'
		mkdir "./backup/backup-$BACT/"
		cp -r ~/.config/i3/ "./backup/backup-$BACT/i3/"
		cp ~/.zshrc "./backup/backup-$BACT/.zshrc"
		cp /etc/i3status.conf ./backup/backup-$BACT/i3status.conf
		cp /etc/zsh_command_not_found "./backup/backup-$BACT/zsh_command_not_found"
	fi
	
	echo 'It is time to update my files! o(〃＾▽＾〃)o'
	cp hikkamorii.zsh-theme ~/.oh-my-zsh/themes/
	cp -r linuxowo/ ~/.oh-my-zsh/linuxowo/
	cp -r i3/ ~/.config/i3/
	cp .zshrc ~/.zshrc
	cp .Xresources ~/.Xresources
	echo 'You need to be superuser to update those! (￣ω￣;)' | lolcat
	sudo cp i3status.conf /etc/
	sudo cp zsh_command_not_found /etc/zsh_command_not_found
	sudo touch /etc/hikkacuteafuser
	sudo touch /etc/hikkacuteafprev
	sudo chmod 777 /etc/hikkacuteaf*
	sudo echo "$USER" > /etc/hikkacuteafuser
	sudo echo "$BACT" > /etc/hikkacuteafprev	
	echo 'All files were updated. ヽ(〃･ω･)ﾉ' | lolcat 
	echo 'If you are unhappy with what I have done, just run updater.sh with "restore" option to restore to previous backup. You can also add datestamp if you want to restore specific  backup. Datestamp of this update is:' $BACT 
fi
