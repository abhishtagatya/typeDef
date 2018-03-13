#!/bin/bash

# TypeDef | Defining the File Types

version="0.1"
author="Abhishta Gatya"

#TODO :
# - Create a feature list (Help, +Links, Report, +Full Description, version)
# - Clean Code with ShellCheck
# Log(12 March 2018)

function cmd_help {
  # Put A Help Function Here!
  printf "Hello World"
}

function getJSONContent {
  json_content=$(curl -s "$extension_url" | jq --arg extension "$extension" ".[\"$extension\"][\"header\",\"developer\",\"category\",\"description\"]")
  option=$1

  case $option in
    --link|-l)
      printf "$json_content\n"
      printf "\nhttps://fileinfo.com/extension/%s\n" "$extension"
      ;;
    *)
      printf "$json_content\n"
      printf "$option"
      ;;
  esac
}

# GitHub's 'extension.json' Database
extension_url="https://raw.githubusercontent.com/abhishtagatya/typeDef/master/extension.json"

# Get the File Extension and Filename
filename=$(basename "$1")
extension="${filename##*.}"
filename="${filename%.*}"

# command Packing
check_key=$(curl -s $extension_url | jq "has(\"$extension\")")
get_json=$(curl -s $extension_url | jq ".[\"$extension\"]")

# Control Flow

if [[ $check_key ]]; then
  if [[ "$get_json" != "null" ]]; then
    getJSONContent $2
  else
    file $1
  fi
fi
