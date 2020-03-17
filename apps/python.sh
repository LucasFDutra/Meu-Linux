#!/bin/bash

# PIP 3
sudo apt install python3-dev python3-pip -y
# Jupyter Notebook
sudo apt-get install python3-setuptools -y
sudo pip3 install --upgrade setuptools
sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install jupyter
# Bibliotecas python
sudo pip3 install tensorflow
sudo pip3 install numpy
sudo pip3 install scipy
sudo apt-get install python3-tk -y
sudo python3 -m pip install -U matplotlib
sudo pip3 install --upgrade --no-deps statsmodels
sudo python3 -m pip install --upgrade pandas
sudo pip3 install keras
sudo pip3 install -U scikit-learn
sudo pip3 install gym
sudo pip3 install keras-rl
sudo pip3 install xgboost
sudo pip3 install fbprophet
sudo pip3 install SQLAlchemy
sudo pip3 install progressbar2
sudo pip3 install statsmodels