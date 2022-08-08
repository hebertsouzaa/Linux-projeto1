#!/bin/sh

#Criando os Diretorios
echo "Criando os Diretorios"
echo
mkdir /publico 
echo "Diretorio Publico Criado!"
mkdir /adm
echo "Diretorio adm Criado!"
mkdir /ven
echo "Diretorio ven Criado!"
mkdir /sec
echo "Diretorio sec Criado!"

#Criando os Grupos 
echo "criando grupos!!!"
sudo addgroup GRP_ADM
sudo addgroup GRP_VEN
sudo addgroup GRP_SEC

useradd carlos -m -s  /bin/bash -p $(openssl passwd - crypt Senha123) -G GRP_ADM

useradd Maria -m -s  /bin/bash -p $(openssl passwd - crypt Senha123) -G GRP_ADM

useradd Joao -m -s  /bin/bash -p $(openssl passwd - crypt Senha123) -G GRP_ADM

useradd Debora -m -s  /bin/bash -p $(openssl passwd - crypt Senha123) -G GRP_VEN

useradd Sebastiana -m -s  /bin/bash -p $(openssl passwd - crypt Senha123) -G GRP_VEN

useradd Roberto -m -s  /bin/bash -p $(openssl passwd - crypt Senha123) -G GRP_VEN

useradd Josefina -m -s  /bin/bash -p $(openssl passwd - crypt Senha123) -G GRP_SEC

useradd Amanda -m -s  /bin/bash -p $(openssl passwd - crypt Senha123) -G GRP_SEC

useradd Rogerio -m -s  /bin/bash -p $(openssl passwd - crypt Senha123) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec 

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM"


















#Criando os Usuarios
echo "Adicionar usuário: "
read usuario
adduser $usuario

echo "senha do usuario $usuario: "
passwd $usuario

#adicionando ao grupo
groupadd $usuario 

gpasswd -a $usuário GRP_ADM





