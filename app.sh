# Stop apps
pm2 stop all;
pm2 delete all;
# Stop nginx
sudo systemctl stop nginx;
# delete Gojushinryu-website
rm -r ~/apps/Gojushinryu-website;
# cloning git repo
git clone https://github.com/Mubtasimf443/Gojushinryu-website.git ~/apps/Gojushinryu-website;
cd ~/apps/Gojushinryu-website;
# installing Defendencies
npm install;
cp ~/apps/prod.env ~/apps/Gojushinryu-website/d.env;
pm2 start ~/apps/Gojushinryu-website/index.js --name app;
sudo systemctl restart nginx;
nginx -s reload;