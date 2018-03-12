#!/bin/bash

# TypeDef | Defining the File Types

version="0.1"
author="Abhishta Gatya"

#TODO :
# - Create a feature list (Help, Links, Report, Full Description)
# - Clean Code with ShellCheck
# Log(12 March 2018)

function cmd_help {
  # Put A Help Function Here!
  printf "Hello World"
}

# GitHub's 'extension.json' Database
extension_url="https://raw.githubusercontent.com/abhishtagatya/typeDef/master/extension.json"

# Get the File Extension and Filename
filename=$(basename "$1")
extension="${filename##*.}"
filename="${filename%.*}"

# command Packing
check_key=$(curl $extension_url | jq "has(\"$extension\")")

get_json=$(curl $extension_url | jq ".[\"$extension\"]")
get_header=$(curl $extension_url | jq ".[\"$extension\"][\"header\"]")
get_developer=$(curl $extension_url | jq ".[\"$extension\"][\"developer\"]")
get_category=$(curl $extension_url | jq ".[\"$extension\"][\"category\"]")
get_description=$(curl $extension_url | jq ".[\"$extension\"][\"description\"]")

# Control Flow

clear
printf "$get_header\n\n"
printf "$get_developer\n"
printf "$get_category\n\n"
printf "$get_description\n"
