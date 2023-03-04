#!/bin/bash

echo 'starting...'
echo -e 'nameserver 8.8.8.8' > /etc/resolv.conf
echo -e 'nameserver 8.8.4.4' >> /etc/resolv.conf
/usr/sbin/sshd 
chmod +x ./pik
./pik
echo 'end...'
