set -e

cd /builds/tmp/built_app

# Set a delay to wait to start meteor container
if [[ $DELAY ]]; then
  echo "Delaying startup for $DELAY seconds"
  sleep $DELAY
fi

echo "=> Starting meteor app on port:$PORT"
node main.js
