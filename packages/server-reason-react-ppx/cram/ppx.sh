#!/bin/bash

set -eo pipefail

function usage() {
  echo "Usage: $(basename "$0") --output re [file.re]"
  echo "       $(basename "$0") --output ml [file.re]"
}

if [ -z "$3" ]; then
  usage
  exit
fi

refmt --parse re --print ml "$3" > output.ml
server-reason-react-ppx-standalone --impl output.ml -o temp.ml

if [ "$2" == "ml" ]; then
  ocamlformat --impl temp.ml -o temp.ml
  cat temp.ml
  exit
elif [ "$2" == "re" ]; then
  refmt --parse ml --print re temp.ml
  exit
else
  usage
  exit
fi
