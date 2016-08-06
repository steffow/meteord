#set -e

COPIED_APP_PATH=/copied-app
BUNDLE_DIR=/tmp/bundle-dir

# sometimes, directly copied folder cause some wierd issues
# this fixes that
cp -R /app $COPIED_APP_PATH
cd $COPIED_APP_PATH

meteor build --directory $BUNDLE_DIR --server=http://localhost:3000 --architecture=os.linux.x86_64

cd $BUNDLE_DIR/bundle/programs/server/

# rm -rf npm/node_modules/meteor/npm-bcrypt/node_modules/bcrypt

# echo `date` > /home/vagrant/base.log
# echo "Reinstalling binary modules like bcrypt.\n" >> /home/vagrant/base.log
# npm --unsafe-perm install
npm install

mv $BUNDLE_DIR/bundle /built_app

# cleanup
rm -rf $COPIED_APP_PATH
rm -rf $BUNDLE_DIR
rm -rf ~/.meteor
rm /usr/local/bin/meteor