#!/bin/sh
sudo apt update
sudo apt -y upgrade
python3 -V
sudo apt install -y python3-pip
sudo apt install -y build-essential libssl-dev libffi-dev python3-devsudo apt install -y python3-venv
mkdir environments
cd environments
python3 -m venv my_env
ls my_env
source my_env/bin/activate

