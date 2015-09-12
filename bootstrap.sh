#!/usr/bin/env bash

apt-get update
apt-get install -y zsh git rake silversearcher-ag libffi-dev libssl-dev libreadline-dev zlib1g-dev

git clone https://github.com/NemSim/dotfiles /home/vagrant/dotfiles

git clone https://github.com/rupa/z /home/vagrant/tools/z

git clone https://github.com/sstephenson/rbenv.git /home/vagrant/.rbenv
git clone https://github.com/sstephenson/ruby-build.git /home/vagrant/.rbenv/plugins/ruby-build

# FIXME set up zsh by default

chown -R vagrant:vagrant /home/vagrant/tools
chown -R vagrant:vagrant /home/vagrant/.rbenv
chown -R vagrant:vagrant /home/vagrant/dotfiles

# FIXME auto set up dotfiles by rake like:
# cd /home/vagrant/dotfiles && rake install['/home/vagrant/']
