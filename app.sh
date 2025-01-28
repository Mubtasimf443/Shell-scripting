# Stop apps
pm2 stop all;
pm2 delete all;
# Stop nginx
sudo systemctl stop nginx;
# delete Gojushinryu-website
rm -r ~/apps/Gojushinryu-website;
# cloning git repo
git clone https://github.com/Mubtasimf443/Gojushinryu-website.git ~/apps/Gojushinryu-website;
cd ~/apps/Gojushinryu-website/sv;
# installing Defendencies
npm install;
#copy env files
cp ~/apps/prod.env ~/apps/Gojushinryu-website/sv/d.env;
#starting app
pm2 start ~/apps/Gojushinryu-website/sv/index.js --name app;
# starting nginx
sudo systemctl restart nginx;
nginx -s reload;
echo "Alhamdulillah, Server Updated and Started Successfully";