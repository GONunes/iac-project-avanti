#!/bin/bash

echo "Criando diretorios"

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec


echo "Criando grupos"

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC


echo "Criando usuarios e atribuindo aos grupos"

sudo useradd carlos -c "Carlos Jose" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd Senha123)
sudo useradd maria -c "Maria Vitoria" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd Senha123)
sudo useradd joao -c "Joao Vitor" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd Senha123)

sudo useradd debora -c "Debora Fonseca" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd Senha123)
sudo useradd sebastiana -c "Sebastiana Pereira" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd Senha123)
sudo useradd roberto -c "Roberto Silva" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd Senha123)

sudo useradd josefina -c "Josefina Pinheiro" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd Senha123)
sudo useradd amanda -c "Amanda Oliveira" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd Senha123)
sudo useradd rogerio -c "Rogerio Neves" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd Senha123)


echo "Definindo permissoes"

sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec
sudo chmod 777 /publico


echo "Script bem sucedido!"