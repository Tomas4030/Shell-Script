#!/bin/bash

for pasta1 in ./script_sample_folder/*; do
    # Repetir o processo para cada letra do alfabeto
        nome=$(basename "$dir")
         touch $pasta1/script_sample_folder-$nome.txt
    done

# Mensagem de sucesso
echo "Txt criado com sucesso."