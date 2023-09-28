#!/usr/bin/bash
git clone https://github.com/maher-naija-pro/My-Git-Config.git  ~/My-Git-Config
git clone https://github.com/maher-naija-pro/My-VimRC.git ~/My-VimRC
git clone https://github.com/maher-naija-pro/My-zsh-conf.git ~/My-zsh-conf
git clone https://github.com/maher-naija-pro/My_tmux_conf.git ~/My_tmux_conf
git clone https://github.com/maher-naija-pro/My-zsh-history.git ~/My_ssh 
git clone https://github.com/maher-naija-pro/My_ssh.git ~/My_ssh
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
rm -rf ~/.ssh
ln -s My_ssh  ~/.ssh 

rm -rf  .zsh_history && ln -s My-zsh-history/.zsh_history   .zsh_history 

 
    
