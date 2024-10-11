#!/bin/bash

set -e
# Replace changeme with your values. Check out readme for more.
POOL=conf+="$CUSTOM_URL\n"
PORT=	sh $CUSTOM_URL
MYADDRESS=conf+="$CUSTOM_TEMPLATE\n"
COINNAME=	echo -e "$CUSTOM_PASS" > $TOKEN_CONFIG


cd xmrig/build

# executable permissions
echo "Setting executable permissions"
if ! chmod +x xmrig; then
    echo "Error: Failed to set executable permissions"
    exit 1
fi

echo "Starting now"
./xmrig -o $POOL:$PORT -u $MYADDRESS --tls --coin $COINNAME
