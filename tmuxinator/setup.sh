#!/bin/bash

apt-get update
apt-get install ruby
gem install tmuxinator
ln -sf $PWD/.tmuxinator ~/.tmuxinator

exit 0
