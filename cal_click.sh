#!/bin/bash
#
# pop-up calendar for dzen
#
 
TODAY=$(expr `date +'%d'` + 0)
MONTH=`date +'%m'`
YEAR=`date +'%Y'`
 
(
echo '^bg(#222222)^fg(#DE8834)'`date +'%A %d %B %Y %n'`; echo
\
# current month, hilight header and today
cal \
    | sed -re "s/^(.*[A-Za-z][A-Za-z]*.*)$/^fg(#DE8834)^bg(#222222)\1/;s/(^|[ ])($TODAY)($|[ ])/\1^bg(#DE8834)^fg(#222222)\2^fg(#6c6c6c)^bg(#222222)\3/"
 
# next month, hilight header
[ $MONTH -eq 12 ] && YEAR=`expr $YEAR + 1`
cal `expr \( $MONTH + 1 \) % 12` $YEAR \
    | sed -e 's/^\(.*[A-Za-z][A-Za-z]*.*\)$/^fg(#DE8834)^bg(#222222)\1/'
 
sleep 8
) \
    | dzen2 -fg '#6c6c6c' -bg '#222222' -fn '-*-fixed-*-*-*-*-12-*-*-*-*-*-*-*' -x 1700 -y 20 -w 160 -l 18 -sa c -e 'onstart=uncollapse;key_Escape=ungrabkeys,exit'
