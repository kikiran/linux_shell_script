#!/bin/bash
######################################
#Author: KIRANKUMAR
#Date: 05-Nov-2024
#version: V2
## This script deploy MERN Stack App
######################################
set -ex

#Installation of git

if command -v git >/dev/null 2>&1; then
echo "Git is already installed"
else 

sudo apt-get install -y git
fi

# Installation of NodeJS
if command -v nvm >/ev/null 2>&1; then
echo "nvm already Installed" 
else
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install --lts
fi

#Clone Project in server
git clone https://github.com/kikiran/mern_crud_app.git

cd mern_curd_app

npm run build
