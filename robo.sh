#!/usr/bin/env bash

echo "Robo"
echo "Fale alguma coisa"
read -ep "> " prompt

if [[ -z "$prompt" ]]; then
    echo "É necessaário digitar algo"
    exit 1
fi

case $prompt in
    *'tudo bem'*)
        echo "Tudo bem e com você?"
esac
