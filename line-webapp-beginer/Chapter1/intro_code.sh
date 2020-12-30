#!/bin/bash
# Clone handson repository
git clone https://github.com/line-developer-community/beginer-webapp-handson-code.git handson

# Install Python Libralies
cd handson
pip3 install -r requirements.txt
clear
echo "Finish!"
