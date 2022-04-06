ARTIST=$(cmus-remote -Q | grep -w albumartist | cut -d" " -f 3-)
ALBUM=$(cmus-remote -Q | grep -w album | cut -d" " -f 3- | head -1)
FILE=$(cmus-remote -Q | grep -w file | cut -f 2- -d ' ')



echo $ARTIST $ALBUM $FILE
ffmpeg -i "$FILE"  -hide_banner -loglevel error -f image2pipe - | jp2a - --size=90x45 --colors
