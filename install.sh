# Requires vim and zsh to already be installed
if [ "$(uname -a | grep -i ubuntu)" ]; then
	sudo apt-get install -y zsh
elif [ "$(uname)" == "Darwin" ]; then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install tmux
	brew install zsh
else
	# this is something else
	echo "Not mac or ubuntu"
fi

# tmux
cd
rm -rf .tmux
git clone https://github.com/jculvey/.tmux.git
ln -s .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# Make vim usable
curl https://raw.githubusercontent.com/jculvey/vimfiles/master/bootstrap.sh | bash

# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/jculvey/oh-my-zsh/master/tools/install.sh)"


