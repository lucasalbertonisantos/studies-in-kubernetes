#!/bin/bash  
echo "Iniciando Script"
echo "Removendo docker existente"
sudo apt-get remove docker docker-engine docker.io containerd runc
echo "Atualizando pacotes 1"
sudo apt-get update
echo "Instalando certificados"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
echo "Atualizando caminho do docker"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "Incluindo fingerprint"
sudo apt-key fingerprint 0EBFCD88
echo "Adicionando repositório docker no ubuntu"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
echo "Atualizando pacotes 2"
sudo apt-get update
echo "Instalando docker"
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
echo "Docker instalado"
echo "criando grupo docker"
sudo groupadd docker
echo "Adicionando comandos docker ao usuário"
sudo usermod -aG docker ${USER}
echo "Adicionando mudanças"
newgrp docker
echo "Criar certificado 1"

