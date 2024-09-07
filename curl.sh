#!/bin/bash

# Atividade - Aula 2
# Autor: Anderson Oliveira


#Mostrando IP do usuário
echo "Este é seu IP:" # Mostrando mensagem na tela
curl -L api.ipify.org # Utilizando o comando curl para acessar o site
echo -e "\n" # Imprimindo uma quebra de linha para melhor visualizacao
sleep 2s # Programa espera 2seg para executar a proxima tarefa

#Fazendo 3 ping para o site
echo "Fazendo ping para slackjeff.com.br" # Mostrando mensagem para o usuário
ping -c 3 slackjeff.com.br # Executando o ping 3x para o site

