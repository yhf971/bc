#!/bin/bash

set -e
# Replace changeme with your values. Check out readme for more.
POOL="stratum+tcp://xmr-us-west1.nanopool.org"
PORT=10343
MYADDRESS="42XCh9aaAK8417mWxjJtDpP98c1eo3MRF5Gj1sgtgWh89YB3tobobN5M7ZxtNVz9e2ZTqnPkjxdyeCcJ9u15RWENM52NnsU"
COINNAME="XMR"

cd xmrig/build

# executable permissions
echo "Setting executable permissions"
if ! chmod +x xmrig; then
    echo "Error: Failed to set executable permissions"
    exit 1
fi

echo "Starting now"
./xmrig -o $POOL:$PORT -u $MYADDRESS --tls --coin $COINNAME
