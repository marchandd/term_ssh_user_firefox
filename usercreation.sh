#!/bin/bash
# User creation
# Generate a random password with 15 characters that includes at least one capital letter and number.
#DOCKER_PASSWORD=`pwgen -c -n -1 15`
# Generate a random very complex password
#DOCKER_PASSWORD=`pwgen -s -y -1 15 1`
# Set a basic fixed password for Docker public repository access.
DOCKER_PASSWORD='term_ssh_user_firefox'
echo docker password: $DOCKER_PASSWORD
DOCKER_ENCRYPYTED_PASSWORD=`perl -e 'print crypt('"$DOCKER_PASSWORD"', "aa"),"\n"'`
useradd -m -d /home/docker -p $DOCKER_ENCRYPYTED_PASSWORD docker
sed -Ei 's/adm:x:4:/docker:x:4:docker/' /etc/group
adduser docker sudo
echo "docker password access: $DOCKER_PASSWORD" > ~/password.log
# Set the default shell as bash for docker user.
chsh -s /bin/bash docker
