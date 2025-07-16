#!/bin/bash

# Check if a role was passed (ansible or jenkins)
ROLE=$1

if [[ "$ROLE" == "ansible" ]]; then
    echo "Creating user 'ansible'..."
    sudo useradd -m ansible
    echo "ansible ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ansible
    sudo chmod 440 /etc/sudoers.d/ansible
    echo "User 'ansible' created with root privileges."

elif [[ "$ROLE" == "jenkins" ]]; then
    echo "Creating user 'jenkins'..."
    sudo useradd -m jenkins
    echo "jenkins ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/jenkins
    sudo chmod 440 /etc/sudoers.d/jenkins
    echo "User 'jenkins' created with root privileges."

else
    echo "Usage: $0 [ansible|jenkins]"
    exit 1
fi

