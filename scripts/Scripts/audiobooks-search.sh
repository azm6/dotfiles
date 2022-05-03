#!/usr/bin/env bash

# Books directory

BOOKS_DIR=~/Desktop/AudioBooks/Blinkist

# Save find result to F_ARRAY
readarray -t F_ARRAY <<< "$(find $BOOKS_DIR -type f -regex '.*\(m4a\|ogg\|mp3\)$')"

# Associative array for storing books
# key => book name
# value => absolute path to the file
# BOOKS['filename']='path'
declare -A BOOKS

# Add elements to BOOKS array
get_books() {

  # if [ ${#F_ARRAY[@]} != 0 ]; then
  if [[ ! -z ${F_ARRAY[@]} ]]; then
    for i in "${!F_ARRAY[@]}"
    do
      path=${F_ARRAY[$i]}
      file=$(basename "${F_ARRAY[$i]}")
      BOOKS+=(["$file"]="$path")
    done
  else
      echo "$BOOKS_DIR Doesn't have in books."
      exit
  fi

  
}

# List for rofi
gen_list(){
  for i in "${!BOOKS[@]}"
  do
    echo "$i"
  done
}

main() {
  get_books
  book=$( (gen_list) | rofi -theme-str 'window {width: 95%; height: 70%;}' -dmenu -i -matching normal -no-custom -location 0 -p "Book >> " )

  if [ -n "$book" ]; then
    #xdg-open "${BOOKS[$book]}"
    mpv "${BOOKS[$book]}"
  fi
}

main

exit 0
