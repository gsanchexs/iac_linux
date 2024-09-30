#!/bin/bash

echo "Configurando infraestrutura..."

echo "Criando diretórios..."
mkdir -m 777 /publico
mkdir -m 770 /adm
mkdir -m 770 /ven
mkdir -m 770 /sec

echo "Criando grupos..."

groupadd GRP_Adm
groupadd GRP_Ven
groupadd GRP_Sec

echo "Criando usuários..."

echo "Criando usuários do GRP_Adm..."
useradd -c "Carlos Maia" -m -s /bin/bash -G GRP_Adm carlos.maia -p $(openssl passwd -1 senha123)
useradd -c "Maria Costa" -m -s /bin/bash -G GRP_Adm maria.costa -p $(openssl passwd -1 senha123)
useradd -c "João Silva" -m -s /bin/bash -G GRP_Adm joao.silva -p $(openssl passwd -1 senha123)
echo "Fim GRP_Adm"

echo "Criando usuários do GRP_Ven..."
useradd -c "Debora Santos" -m -s /bin/bash -G GRP_Ven debora.santos -p $(openssl passwd -1 senha123)
useradd -c "Sebastiana Cruz" -m -s /bin/bash -G GRP_Ven sebastiana.cruz -p $(openssl passwd -1 senha123)
useradd -c "Roberto Neto" -m -s /bin/bash -G GRP_Ven roberto.neto -p $(openssl passwd -1 senha123)
echo "Fim GRP_Ven"

echo "Criando usuários do GRP_Sec"
useradd -c "Josefina Oliveira" -m -s /bin/bash -G GRP_Sec josefina.oliveira -p $(openssl passwd -1 senha123)
useradd -c "Amanda Dias" -m -s /bin/bash -G GRP_Sec amanda.dias -p $(openssl passwd -1 senha123)
useradd -c "Rogerio Lima" -m -s /bin/bash -G GRP_Sec rogerio.lima -p $(openssl passwd -1 senha123)
echo "Fim GRP_Sec"

echo "Alterando permissões dos usuários..."

chown root:GRP_Adm /adm
chown root:GRP_Ven /ven
chown root:GRP_Sec /sec

echo "Estrutura criada........"
