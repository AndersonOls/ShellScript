# !/bin/bash

#Encurtador de URL utilizando
#API do tinyurl
# Autor: Anderson Oliveira

API="https://tinyurl.com/api-create.php?url"

#Entrada de dados do usuario
echo "Qual é o endereço de encurtamento?"
read url_usuario

curl -s "$API=$url_usuario"
echo