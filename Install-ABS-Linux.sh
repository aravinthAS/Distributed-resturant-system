#!/bin/bash

echo Welcome to installing abs compiler

echo ======INSTALL JAVA JDK==========
sudo apt-get install default-jdk -y
echo ======COMPLETED - JAVA JDK=======

echo ======INSTALL ERLANG============
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
sudo dpkg -i erlang-solutions_1.0_all.deb -y
sudo apt-get update -y
sudo apt-get install erlang -y
echo ======COMPLETED - ERLANG========

echo ======INSTALL ANT===============
sudo apt-get update -y
sudo apt-get install ant -y
echo ======COMPLETED - ANT===========

echo ======INSTALL ABS===============
mkdir -p ~/Source
cd ~/Source
git clone https://github.com/abstools/abstools.git
cd abstools/frontend
ant
cd ~
echo "\nPATH=$PATH:~/Source/abstools/frontend/bin/bash" >> .bashrc
echo "\nalias abs-run='gen/erl/run'" >> .bashrc
bash
echo ======COMPLETED=================



