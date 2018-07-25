#!/bin/bash
if [ -z "$1" ]
then
  cd $(dirname $0)/src/build
else
  cd $1
fi

port=5000
link="http://localhost:$port"
function openLink {
  while ! curl "$link" &> /dev/null
  do
    sleep 0.5
  done
  if xdg-open --version &> /dev/null
  then
    xdg-open "$link"
  else
    echo "Open $link manually"
  fi
}
openLink&
python3 -m http.server ${port}
