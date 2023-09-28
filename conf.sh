#!/usr/bin/bash
rm -rf ~/My-Git-Config 
git clone https://github.com/maher-naija-pro/My-Git-Config.git  ~/My-Git-Config
rm -rf ~/My-VimRC
git clone https://github.com/maher-naija-pro/My-VimRC.git ~/My-VimRC
rm -rf ~/My-zsh-conf
git clone https://github.com/maher-naija-pro/My-zsh-conf.git ~/My-zsh-conf
rm -rf ~/My_tmux_conf
git clone https://github.com/maher-naija-pro/My_tmux_conf.git ~/My_tmux_conf
rm -rf ~/My_ssh
git clone https://github.com/maher-naija-pro/My-zsh-history.git ~/My_ssh 
rm -rf ~/My_ssh
git clone https://github.com/maher-naija-pro/My_ssh.git ~/My_ssh
rm -rf  ~/My-aws-cli
git clone https://github.com/maher-naija-pro/My-aws-cli.git  ~/My-aws-cli 



rm -rf ~/.aws
ln -s My-aws-cli  ~/.aws
rm -rf  ~/.vimrc
ln -s My-VimRC/.vimrc  ~/.vimrc
rm -rf  ~/.zshrc
ln -s zsh_config/.zshrc  ~/.zshrc
rm -rf  ~/.p10k.zsh
ln -s zsh_config/.p10k.zsh   ~/.p10k.zsh
rm -rf   ~/.tmux.conf
ln -s tmux_conf/.tmux.conf   ~/.tmux.conf
rm -rf  ~/.gitconfig
ln -s My-Git-Config/.gitconfig  ~/.gitconfig

cp .ssh/authorized_keys /tmp
rm -rf ~/.ssh
ln -s My_ssh  ~/.ssh 
cp /tmp/authorized_keys  ~/.ssh/
chmod 600  ~/.ssh/*.key
chmod 600  ~/.ssh/*.rsa

rm -rf   ~/.zsh_history && ln -s My-zsh-history/.zsh_history    ~/.zsh_history 
