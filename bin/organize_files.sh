#!/bin/bash

if [ "$#" -eq 0 ]; then
  echo "Por favor, forneça o diretório a ser organizado como argumento."
  exit 1
fi

organize_dir="$1"

if [ ! -d "$organize_dir" ]; then
  echo "Diretório '$organize_dir' não encontrado."
  exit 1
fi

cd "$organize_dir" || exit 1

for file in *; do
  if [ -f "$file" ]; then
    extension="${file##*.}"
    mkdir -p "$organize_dir/$extension"
    mv "$file" "$organize_dir/$extension/"
  fi
done

echo "Organização concluída com sucesso para o diretório '$organize_dir'."
