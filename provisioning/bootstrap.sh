#!/usr/bin/env bash

# Variables

USER=test

# Bootstrap

apt-get update
apt-get install -y ansible

id $USER

if [ $? == '1' ]; then
	useradd -p '$6$74O5wanP$hyTENs1LvISbAVp8FjSHZ7W8OVkd8bRd5.6URhehFxYgsZS23Xf/WLPrly1unx037gK6ljpxxpvkenoJyIjyU1' -d /home/$USER -m $USER
	su - $USER -c "ssh-keygen -q -t rsa -b 2048 -f /home/$USER/.ssh/id_rsa -P ''"
fi

sed -i 's/Home/vagrant.test/g' /etc/resolv.conf
