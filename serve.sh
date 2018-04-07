#!/bin/bash
cd html
port=5000
link="http://localhost:$port"
function openLink {
  while ! curl "$link" &> /dev/null
  do
    sleep 0.5
  done
  xdg-open "$link"
}
openLink&
python3 -m http.server ${port}
