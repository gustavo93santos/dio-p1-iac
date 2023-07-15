#!/bin/bash
echo "Iniciar criação de diretorios."

mkdir /publico
chmod 777 /publico

mkdir /adm
chmod 770 /adm

mkdir /ven
chmod 770 /ven

mkdir /sec
chmod 770 /sec

echo "Criação de diretorios finalizada."

echo "Iniciar criação de grupos."

groupadd GRP_ADM
chown root:GRP_ADM /adm

groupadd GRP_VEN
chown root:GRP_VEN /ven

groupadd GRP_SEC
chown root:GRP_SEC /sec

echo "Criação de grupos finalizada."

echo "Iniciar criação de usuários."
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC



echo "Criação de usuários finalizada."