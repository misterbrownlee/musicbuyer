#!/usr/bin/env zsh

# bandcamp: https://bandcamp.com/search?q=PARAMETERS&item_type=
# soundcloud: https://soundcloud.com/search?q=PARAMETERS
# amazon: https://www.amazon.com/s?k=PARAMETERS&i=digital-music

# csv presumes colums are song title, artist, album, ISRC

while IFS=, read -r col1 col2 col3
do
	PARAMETERS="$col1 $col"
	# you don't need to encode & for bandcamp for some reason
	# if you do want to encode the & uncomment this line
	# PARAMETERS=$(echo $PARAMETERS | sed -e 's/\&/\%26/g')
    open "https://bandcamp.com/search?q=$PARAMETERS&item_type=t"
    sleep .5
    # change the CSV file name here
done < ./data/example-playlist.csv




