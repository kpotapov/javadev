#!/usr/bin/env bash

sudo apt-get -y install git curl unzip git mc vim xclip grc screen unity-tweak-tool

# java sdk
mkdir -p /home/vagrant/de/ &&  tar xzf /vagrant/inst/jdk-8u121-linux-x64.tar.gz -C /home/vagrant/de/
ln -s /home/vagrant/de/jdk1.8.0_121 /home/vagrant/de/jdk8

#maven
unzip /vagrant/inst/apache-maven-3.3.9-bin.zip -d /home/vagrant/de/
ln -s /home/vagrant/de/apache-maven-3.3.9 /home/vagrant/de/maven


#personal settings
cp -a /vagrant/inst/dots/.functions /home/vagrant/
cat /vagrant/inst/dots/.bashrc_tail1.txt >> /home/vagrant/.bashrc

# screenrc
cp -a /vagrant/inst/dots/.screenrc /home/vagrant/

#Community Edition
tar xzf /vagrant/inst/ideaIC-2017.1.4.tar.gz -C /home/vagrant/de/
