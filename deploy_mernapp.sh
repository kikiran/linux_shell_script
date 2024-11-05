#!/bin/bash
######################################
#Author: KIRANKUMAR
#Date: 05-Nov-2024
#version: V1
## This script deploy MERN Stack App
######################################
set -X

#Installation of git

sudo apt-get install git

# Installation of NodeJS
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install --lts

#Clone Project in server
git clone https://github.com/kikiran/mern_crud_app.git

cd mern_curd_app

npm run build
