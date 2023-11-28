#!/bin/bash

echo "Criando diretorios..."
#Para dar uma resposta de onde o script esta executando

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123 -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha123 -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha123 -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123 -G GRP_VEN
useradd sebastião -m -s /bin/bash -p $(openssl passwd -crypt senha123 -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123 -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123 -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123 -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123 -G GRP_SEC


echo "Aplicando permissões dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown roor:GRP_SEC /sec

#PERMISSÃO ROOT - ADM - DEMAIS USUARIOS 
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."

