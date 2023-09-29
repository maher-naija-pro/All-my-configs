#!/usr/bin/bash
sudo yum install -y git 


if [[ ! -d ~/My-Git-Config   ]]
then
        git clone https://github.com/maher-naija-pro/My-Git-Config.git  ~/My-Git-Config
fi
if [[ ! -d ~/My-VimRC   ]]
then
        git clone https://github.com/maher-naija-pro/My-VimRC.git ~/My-VimRC
fi
if [[ ! -d ~/My-zsh-conf  ]]
then
        git clone https://github.com/maher-naija-pro/My-zsh-conf.git ~/My-zsh-conf
fi
if [[ ! -d ~/My_tmux_conf   ]]
then
        git clone https://github.com/maher-naija-pro/My_tmux_conf.git ~/My_tmux_conf
fi
if [[ ! -d ~/My-zsh-history   ]]
then
        git clone https://github.com/maher-naija-pro/My-zsh-history.git ~/My-zsh-history
fi

if [[ ! -d ~/All-my-configs  ]]
then
        git clone https://github.com/maher-naija-pro/All-my-configs.git  ~/All-my-configs 
fi


rm -rf ~/.aws
ln -s ~/My-aws-cli  ~/.aws
rm -rf  ~/.vimrc
ln -s ~/My-VimRC/.vimrc  ~/.vimrc
rm -rf  ~/.zshrc
ln -s ~/My-zsh-conf/.zshrc  ~/.zshrc
rm -rf  ~/.p10k.zsh
ln -s ~/My-zsh-conf/.p10k.zsh   ~/.p10k.zsh
rm -rf   ~/.tmux.conf
ln -s ~/My_tmux_conf/.tmux.conf   ~/.tmux.conf
rm -rf  ~/.gitconfig
ln -s ~/My-Git-Config/.gitconfig  ~/.gitconfig

rm -rf   ~/.zsh_history && ln -s My-zsh-history/.zsh_history    ~/.zsh_history 
