#!/usr/bin/bash
sudo yum install -y git 


if [[ ! -d ~/My-zsh-history   ]]
then
        git clone https://github.com/maher-naija-pro/My-zsh-history.git ~/My-zsh-history
fi

if [[ ! -d ~/My_ssh  ]]     
then   
        git clone https://github.com/maher-naija-pro/My_ssh.git  ~/My_ssh 
fi

if [[ ! -d ~/My-aws-cli   ]]     
then
          git clone  https://github.com/maher-naija-pro/My-aws-cli.git ~/My-aws-cli
fi


rm -rf ~/.aws
ln -s ~/My-aws-cli  ~/.aws

if [[ ! -f ~/.ssh/authorized_keys    ]]
then
  cp  ~/.ssh/authorized_keys /tmp
fi
mv  ~/.ssh ~/.ssh-old
ln -s  ~/My_ssh  ~/.ssh
cp /tmp/authorized_keys  ~/.ssh/
chmod 600  ~/.ssh/*.key
chmod 600  ~/.ssh/*.rsa

rm -rf   ~/.zsh_history && ln -s My-zsh-history/.zsh_history    ~/.zsh_history 
