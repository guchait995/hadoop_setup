sudo apt-get install ssh
sudo service ssh restart
sudo ssh-keygen -t rsa
sudo mkdir ~/.ssh
sudo chmod 700 ~/.ssh
sudo touch ~/.ssh/authorized_keys
sudo chmod 600 ~/.ssh/authorized_keys
sudo cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
ssh localhost
exit

