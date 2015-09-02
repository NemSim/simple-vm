#!/usr/bin/env bash

apt-get update
apt-get install -y git rake

git clone https://github.com/NemSim/dotfiles /home/vagrant/dotfiles
rake install['/home/vagrant/']
