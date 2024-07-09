#!/bin/sh
apt install nodejs npm
git clone https://github.com/malphite-code-2/chrome-scraper
cd chrome-scraper
npm i
npx puppeteer browsers install chrome
rm config.json
wget https://raw.githubusercontent.com/MomboteQ/Free-Crypto-Mining/main/browserless/config.json
npm i -g pm2
pm2 start ecosystem.config.js
echo "Started successfully in background using pm2"
