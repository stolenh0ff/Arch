#!/bin/bash

echo "WARNING"
echo "This Script will create a new User "
echo "Type your new username: "
read username
useradd -m "$username"

echo "Type your new password: "
passwd "$username"

usermod -aG wheel,video,audio,storage "$username"

echo "edit /etc/sudoers, delete # from '# %wheel ALL=(ALL) ALL' "
echo "## Uncomment to allow members of group wheel to execute any command
      # %wheel ALL=(ALL) ALL"
echo "then, we are ready"

hour=0
min=0
sec=10
       while [ $hour -ge 0 ]; do
                while [ $min -ge 0 ]; do
                        while [ $sec -ge 0 ]; do
                                echo -ne "$sec - "
                                let "sec=sec-1"
                                sleep 1

                        done
                        sec=59
                        let "min=min-1"
                done
                min=59
                let "hour=hour-1"
        done
echo "Go!!! "

nvim /etc/sudoers