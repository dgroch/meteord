set -e

SRC_DIR=/builds/src
BUNDLE_DIR=/builds/tmp/bundle-dir

meteor build --architecture=os.linux.x86_64 --server-only --directory $BUNDLE_DIR --server=http://localhost:3000

cd $BUNDLE_DIR/bundle/programs/server/
npm i

mv $BUNDLE_DIR/bundle /built_app

# cleanup
rm -rf $SRC_DIR
rm -rf $BUNDLE_DIR
rm -rf ~/.meteor
rm /usr/local/bin/meteor
