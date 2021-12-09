#! /bin/bash
 
read -s -p "Forneça a senha: " s


ver=$(echo "${s}" | grep -E "[a-zA-Z0-9]{6,}" | grep -E "[[:upper:]]" | grep -E "[[:digit:]]")


if [ "$s" == "$ver" ]; then
echo
echo "Senha atende aos pré-requisitos"
else
echo
echo "Senha não atende ao pré-requisitos"
fi
