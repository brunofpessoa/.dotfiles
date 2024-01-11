#!/bin/bash

documents_dir="$HOME/Documentos/"
ebooks_dir="$HOME/eBooks/"
images_dir="$HOME/Imagens/"
musics_dir="$HOME/Música/"
videos_dir="$HOME/Videos/"

if [ "$#" -eq 0 ]; then
  echo "Por favor, forneça o diretório a ser organizado como argumento."
  exit 1
fi

organize_dir="$1"

if [ ! -d "$organize_dir" ]; then
  echo "Diretório '$organize_dir' não encontrado."
  exit 1
fi

# Obtém o caminho absoluto do diretório
organize_dir="$(realpath "$organize_dir")"

cd "$organize_dir" || exit 1

for file in *; do
  if [ -f "$file" ]; then
    extension="${file##*.}"

    # Move o arquivo para o diretório padrão do Linux correspondente
    case "$extension" in
      pdf|doc|docx|txt|md) mv "$file" $documents_dir;;
      epub|mobi|azw|azw3) mv "$file" $ebooks_dir;;
      jpg|jpeg|png|gif|bmp|webp) mv "$file" $images_dir;;
      mp4|mkv|avi|mov) mv "$file" $videos_dir;;
      mp3|wav|ogg) mv "$file" $musics_dir;;
      *) echo "Não foi possível determinar a categoria para '$file'." ;;
    esac
  fi
done

echo "Organização concluída com sucesso para o diretório '$organize_dir'."
