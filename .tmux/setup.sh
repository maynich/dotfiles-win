sudo apt-get update && sudo apt-get install -y \
	tmux \
	ruby

cp -r $PWD/.tmux* ~/

sudo gem install tmuxinator

exit 0
