#!/bin/bash
# Install Jekyll
echo "Installing Ruby"
sudo apt-get clean
sudo apt-get update
sudo apt-get -y install ruby-full build-essential zlib1g-dev
export GEM_HOME=${HOME}/gems
export PATH=${HOME}/gems/bin:${PATH}
{
	echo "# Install Ruby Gems to ~/gems"
	echo "export GEM_HOME=$HOME/gems"
	echo "export PATH=$HOME/gems/bin:$PATH"
} >>~/.bashrc
gem install bundler