#!/bin/bash

#Disk Used
diskused=$( df -h | grep 'dev/sda1' | awk '{print $5}')

#RAM Available
memfree=$(free -mh | grep Mem: | awk '{print $7}')

#Connenetions Check
connections=$(netstat | grep tcp)

#Logged In Check?
users=$(who | awk '{print $1}')

# "-en / -e" interpret color
echo -en "This is a snapshot of your current of system:
         \e[92m                         Disk Used: $diskused
         \e[91m                         Free Memory: $memfree
         \e[96m                         Logged in Users: $users
                
\e[46m                
Open Internet Connections:
$connections
\e[49m
"

#Color Formating in Bash:
#http://misc.flogisoft.com/bash/tip_colors_and_formatting (Links to an external site.)Links to an external site.
#http://wiki.bash-hackers.org/scripting/style (Links to an external site.)


