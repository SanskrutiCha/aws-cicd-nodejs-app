#!/bin/bash
cd /home/ubuntu
rm -rf app
git clone https://github.com/SanskrutiCha/aws-cicd-nodejs-app.git app
cd app
npm install
pm2 stop all || true
pm2 start app.js
