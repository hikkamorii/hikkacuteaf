# hikkaCuteAF
hikkacuteAF is a compilation of my configs + my tools.
LinuxOwO is a cute little franchise of scripts that give you good vibes everytime you open terminal and such. Please read **LinuxOwO** for more info on that.

Notes
=====
This thing was made mostly for me, to sync my configs between all of my computers, but since someone might want to use my configs too (I know that's a thing in linux comunity) I put it here. Please read **Dependencies** for more info on restrictions. Important note, I switched SUPER and CONTROL keys, so now if you don't want that, make sure to delete .Xmodmap.

Dependencies
=====
Things you need for this to run:
* lolcat
* zsh
* oh-my-zsh
* i3-gaps
* i3status
* rofi
* dvorak layout (ets automatically)

Things you *might* need for this to work

* mate-screenshot
* xfce4-terminal

LinuxOwO
====
LinuxOwO are a package of cute little scripts that make your everyday life a tad bit more positive. 
For now there are **2** scripts available:
* linuxowo-welcome -- Cute greeting message everytime you open terminal. Depending on time of day, shows different messages.
* linuxowo-cnf -- Shows cute message when command not found.
### Installation
Updater automatically installs linuxowo, but in case you don't want to use my configs, just type into your .zshrc (depending on your shell, for bash it would be .bashrc) path to linuxowo-welcome.
In case of linuxowo-cnf, you need to put path to linuxowo-cnf to your cnf handling file. For zsh it's /etc/zsh_command_not_found. Note that the command name itself would be the 1st argument, so make sure to pass it trough too (e.g /path/to/owolinux-cnf $cnf).

TODO
====
* Separate argument for LinuxOwO installation only
