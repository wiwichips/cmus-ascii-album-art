ARTIST=$(cmus-remote -Q | grep -w albumartist | cut -d" " -f 3-)
ALBUM=$(cmus-remote -Q | grep -w album | cut -d" " -f 3- | head -1)

echo $ARTIST $ALBUM
