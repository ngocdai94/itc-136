!#bin/bash

#Disk Used
diskused=$( df -h | grep 'dev/sda1' | awk '{print $5}')

#RAM Available
memfree=$(free -mh | awk '{print $7}')

#Connenetions Check
connections=$(netstat | grep tcp)

#Logged In Check?
connections=$(netstat | grep tcp)

echo "This is a snapshot of your current of system:
                Disk Used: $diskused
                
                Free Memory: $memfree
                
                Logged in Users: $users
                
                
Open Internet Connections:
$connections
"
