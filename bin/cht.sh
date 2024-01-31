#!/usr/bin/env bash

languages=`echo "golang typescript nodejs" | tr ' ' '\n'`
core_utils=`echo "curl find grep sed xargs awk sed jq" | tr ' ' '\n'`

selected=`printf "$languages\n$core_utils" | fzf`
read -p "Enter Query: " query

if grep $selected <<< $selected; then
    curl -s cht.sh/$selected/$query | less 
else
    curl -s cht.sh/$selected~$query | less 
fi
