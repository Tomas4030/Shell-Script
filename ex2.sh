#!/bin/bash

#So funciona uma vez Ex
# primeira vez que renomeia Prefixo-aa
# segunda vez que renomeia Prefixo-Prefixo_anterior-aa
# e por ai gg desito 

if [ -z "$1" ]; then
    echo "Uso: $0 <prefixo>"
    exit 1
fi

PREFIXO=$1
PASTA_BASE="script_sample_folder"

for DIR in "$PASTA_BASE"/*/; do
    if [ -d "$DIR" ]; then
        
        NOME_ATUAL=$(basename "$DIR")
        NOVO_NOME="$PASTA_BASE/$PREFIXO-$NOME_ATUAL"
        mv "$DIR" "$NOVO_NOME"
    fi
done

echo "Pastas renomeadas com sucesso."
