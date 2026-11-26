#!/bin/bash
# download "marp" executable & extract to current folder
# https://marp.app/
#
# note: we use "wget -q" or "curl -L -O" to download the sources.
#       (wget is not available on macOS by default - curl is)

set -e

VERSION=4.2.3

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    OSNAME=linux
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OSNAME=mac
else
    echo "unknown system"
    exit 1
fi

URL=https://github.com/marp-team/marp-cli/releases/download/v${VERSION}/marp-cli-v${VERSION}-${OSNAME}.tar.gz

if command -v curl &> /dev/null; then
    DOWNLOADER="curl -L -O"
elif command -v wget &> /dev/null; then
    DOWNLOADER="wget -q"
else
    echo "Neither wget nor curl found. Please install one of these tools."
    exit 1
fi

FILE=${URL##*/} 
rm -f ${FILE}
echo $DOWNLOADER ${URL}
$DOWNLOADER ${URL}
tar xzf ${FILE}
rm ${FILE}
