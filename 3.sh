#!/bin/bash

read -p "Digite um endereço de ip válido: " ip

for n in {1..4};do
	    atual=$(cut -d '.' -f $n <<< "$ip")
    converter="$(bc < <(echo "obase=2;$atual"))"
    while [ ${#converter} -lt 8 ];do
        converter="0$converter"
    done
    echo "Octeto #$n: $atual em binário $converter"
done
