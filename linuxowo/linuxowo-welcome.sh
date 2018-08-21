#!/usr/bin/zsh
# LinuxOWO-welcome is a part of cute[af] little tools for your zsh called 
# linuxowo, made by hikkamorii. 
# 
# LinuxOWO welcome greets you (depending on the time) with cute little 
# messages with kaomojis and also shows time.
#
# The standart package includes:
# 
# 1. linuxowo-welcome.sh -- Welcome message for your shell. 
# 2. linuxowo-cnf.sh 	 -- Command not found handler.
# 3. TBD!
# 
if [ $(date +%H) -le '22' ] && [ $(date +%H) -gt '12' ]
then
	echo '(＾• ω •＾): Welcome, master!  ~ 私はあなたを愛してい' $(date '+%I:%M:%S %p') | lolcat
fi

if [ $(date +%H) -lt '7' ] || [ $(date +%H) -gt '22' ]
then
	echo '_(UwU」∠)_: Sleepy-Sleepy ~ おやすみなさい、先輩！' $(date '+%I:%M:%S %p') | lolcat
else
	if [ $(date +%H) -ge '7' ] & [ $(date +%H) -le '12' ]
	then
		echo '(≧ω≦)ゞ: Good morning, nyea! ~ おはようございます' $(date '+%I:%M:%S %p') | lolcat
	fi
fi
