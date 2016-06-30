# Requires vim and zsh to already be installed

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
