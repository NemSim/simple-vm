#!/usr/bin/env bash

apt-get update
apt-get install -y git rake silversearcher-ag

git clone https://github.com/NemSim/dotfiles /home/vagrant/dotfiles
# FIXME chown dotfiles directory to the vagrant user

# FIXME auto set up dotfiles
# cd /home/vagrant/dotfiles && rake install['/home/vagrant/']
