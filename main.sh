#!/bin/bash
source ls2.sh
source quit.sh
source rm2.sh
source version.sh
source voice.sh

cmd() {
  cmd=$1
  argv=$*

  case "${cmd}" in
    version | --version ) version;;
    quit | exit ) quit;;
    rm ) rm2 $argv;;
    ls ) ls2 $argv;;
    * ) echo "command not found";;
  esac
}

main() {
  lineCount=1

  while [ 1 ]; do
    date=$(date +%H:%M)
    echo -ne "${date} - [\033[31m${lineCount}\033[m] - \033[33mXzen\033[m ~ ☠️ ~ "
    read string

    cmd $string
    lineCount=$(($lineCount+1))
  done
}

main
