#!/usr/bin/zsh
if ls /usr/sbin/$1 1> /dev/null 2>&1 | ls /sbin/$1 1> /dev/null 2>&1
then
echo 'This command exists, but must be run as root. Let me do it for you! ᕙ( * •̀ ᗜ •́ * )ᕗ'
sudo $1
else
        echo 'Sowwy!!!!1 Command' $1 'not found. ๐·°(৹˃̵﹏˂̵৹)°·๐'
fi
