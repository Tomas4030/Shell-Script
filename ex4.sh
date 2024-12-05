#!/bin/bash

# Verifica se o argumento foi passado
if [ $# -eq 0 ]; then
  echo "Uso: $0 <V|F>"
  exit 1
fi

diretorio_base="script_sample_folder"

# Deleta os diretórios com base no argumento
if [ "$1" == "V" ]; then
  rm -rf "$diretorio_base"/*
  echo "Todos os diretórios foram deletados."
else
  for subdiretorio in "$diretorio_base"/*; do
    [ -d "$subdiretorio" ] && [ "$(ls -A "$subdiretorio")" ] && rm -rf "$subdiretorio"
  done
  echo "Diretórios com conteúdo foram deletados."
fi
