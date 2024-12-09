#!/bin/bash
if [ $# -eq 0 ]; then
  echo "Uso: $0 <caractere>"
  exit 1
fi

caractere=$1
diretorio_base="script_sample_folder"

if [ ! -d "$diretorio_base" ]; then
  echo "Erro: O diretório $diretorio_base não existe."
  exit 1
fi

for subdiretorio in "$diretorio_base"/*; do
 if [ -d "$subdiretorio" ] && [[ "$(basename $subdiretorio)" == *"$caractere"* ]]; then
    echo "Deletando o conteúdo de: $subdiretorio"
    rm -rf "$subdiretorio"/*
  fi
done
