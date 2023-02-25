#!/bin/bash


useradd guest10 -c "Usuário Convidado" -s /bin/bash -m -p $(echo "Senha123" |  openssl passwd -6 -stdin)
passwd guest10 -e

useradd guest11 -c "Usuário Convidado" -s /bin/bash -m -p $(echo "Senha123" |  openssl passwd -6 -stdin)
passwd guest11 -e

useradd guest12 -c "Usuário Convidado" -s /bin/bash -m -p $(echo "Senha123" |  openssl passwd -6 -stdin)
passwd guest12 -e

useradd guest13 -c "Usuário Convidado" -s /bin/bash -m -p $(echo "Senha123" |  openssl passwd -6 -stdin)
passwd guest13 -e


