

#!/bin/bash

echo "YouTube Video Download to Convert MP3"

set -Euro pipefail

LINK=${1?Error: No Link}
NAME=${2?Error: No Name}

youtube-dl $LINK -f bestaudio

FILE=*.webm
ffmpeg -i $FILE $NAME.mp3
rm *.webm