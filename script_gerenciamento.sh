#!/bin/bash 

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Modificando permissoes dos diretorios..."

chmod 777 /publico
chown root:GRP_ADM /adm
chmod 770 /adm
chown root:GRP_VEN /ven
chmod 770 /ven
chown root:GRP_SEC /sec
chmod 770 /sec

echo "Criando usuarios..."

useradd carlos -c "Carlos" -m -s /bin/bash -p $(echo "SenhaFake" | openssl passwd -6 -stdin) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(echo "SenhaFake" | openssl passwd -6 -stdin) -G GRP_ADM
useradd joao -c "Joao" -m -s /bin/bash -p $(echo "SenhaFake" | openssl passwd -6 -stdin) -G GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -p $(echo "SenhaFake" | openssl passwd -6 -stdin) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(echo "SenhaFake" | openssl passwd -6 -stdin) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(echo "SenhaFake" | openssl passwd -6 -stdin) -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -p $(echo "SenhaFake" | openssl passwd -6 -stdin) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(echo "SenhaFake" | openssl passwd -6 -stdin) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(echo "SenhaFake" | openssl passwd -6 -stdin) -G GRP_SEC

echo "Finalizado!"
