#!/bin/bash

for username in /home/stud*; do
    # Extract the username from the path
    username=$(basename "$username")

    # Change the home folder
    new_home="/usr/$username"
    sudo usermod -m -d "$new_home" "$username"

    # Change the password
    new_password="${username}123"
    echo -e "$new_password\n$new_password" | sudo passwd "$username"
done
