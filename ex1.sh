#!/bin/bash

for pasta1 in ./script_sample_folder/*; do
    # Repetir o processo para cada letra do alfabeto
    
         touch $pasta1/teste.txt
    done

# Mensagem de sucesso
echo "Pastas criadas com sucesso."