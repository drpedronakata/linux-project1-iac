#!/bin/bash


echo "Criando diretorios..."

mkdir -v /publico 
mkdir -v /adm
mkdir -v /ven
mkdir -v /sec


echo "Criando os grupos de usuarios..."

groupadd GRP_ADM
echo "created group GRP_ADM"

groupadd GRP_VEN
echo "created group GRP_VEN"

groupadd GRP_SEC
echo "created group GRP_SEC"


echo "Especificando grupo e permissoes dos diretorios..."

chown -v root:root /publico
chown -v root:GRP_ADM /adm
chown -v root:GRP_VEN /ven
chown -v root:GRP_SEC /sec

chmod -v 777 /publico
chmod -v 770 /adm
chmod -v 770 /ven
chmod -v 770 /sec


echo "Criando os usuarios..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
echo "Criado os usuarios carlos, maaria, e joao. Do grupo GRP_ADM"

useradd debora -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
echo "Criado os usuarios debora, sebastiana, e roberto. Do grupo GRP_VEN"

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
echo "Criado os usuarios josefina, amanda, e rogerio. Do grupo GRP_SEC"

echo "Finalizado o script"





