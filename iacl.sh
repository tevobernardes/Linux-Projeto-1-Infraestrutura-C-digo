#! /bin/bash

echo "Criando Diretórios"

mkdir /Adm
mkdir /Avangers
mkdir /Visitantes

echo "Criando Grupos de Usuários"

groupadd Stark_Adm
groupadd Grp_Avangers
groupadd Grp_Visitantes
 

echo "Criando Usuários e Adicionando ao Seu Grupo"

useradd TonyStark -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G Stark_Adm
useradd Cap.América -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G Grp_Avangers
useradd Batman -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G Grp_Visitantes

echo "Concedendo Permissões dos Diretórios"

chown root:Stark_Adm /Adm
chown root:Grp_Avangers /Avangers
chown root:Grp_Visitantes /Visitantes

chmod 770 /Adm
chmod 770 /Avangers
chmod 777 /Visitantes

echo "Concluído"



