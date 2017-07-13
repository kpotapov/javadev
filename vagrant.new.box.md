# create a new vagrant box for virtual box from an ubuntu iso

##  install Linux
user:     vagrant
password: vagrant

###  sudo commands without a password
 visudo
 # add vagrant user at the end of file
 vagrant ALL=(ALL) NOPASSWD:ALL

### update the box
sudo apt-get update -y
sudo apt-get upgrade -y
sudo shutdown -r now

### INSTALL THE VAGRANT KEY
mkdir -p /home/vagrant/.ssh
chmod 0700 /home/vagrant/.ssh
wget --no-check-certificate \
    https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub \
    -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh

### INSTALL AND CONFIGURE OPENSSH SERVER
apt-get install -y openssh-server
sudo nano /etc/ssh/sshd_config
AuthorizedKeysFile %h/.ssh/authorized_keys
sudo service ssh restart

### INSTALLING GUEST TOOLS


## create base box

vagrant package --base v0ubuntu16.04.2 --output C:\Users\User\vagrant\v0ubuntu16.04.2_base.box
ls -la ~/vagrant/basebox/v0ubuntu16.04.2_base.box
vagrant box add --force  v0ubuntu16.04.2_base ~/vagrant/basebox/v0ubuntu16.04.2_base.box
# ==> box: Successfully added box 'v0ubuntu16.04.2_base' (v0) for 'virtualbox'!

# now you can check that the box was added
vagrant box list

# links
https://blog.engineyard.com/2014/building-a-vagrant-box
