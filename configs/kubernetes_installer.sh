#!/bin/bash  
echo "Iniciando Script de instalação do kubernetes"
echo "Fazendo o download do kubernetes com o kubectl"
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
echo "Dando permissão ao kubectl para ser executável"
chmod +x ./kubectl
echo "Movendo o kubectl para o PATH para facilitar a execução"
sudo mv ./kubectl /usr/local/bin/kubectl
echo "Instalação do kubernetes concluída"
echo "Iniciando instalação do mikikube fazendo o download"
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube
echo "Garantindo a existência da pasta de executável"
sudo mkdir -p /usr/local/bin/
echo "Instando o Minikube"
sudo install minikube /usr/local/bin/
echo "Instalando o VirtualBox"
sudo apt install virtualbox -y
echo "Iniciando o cluster do Minikube"
sudo minikube start --driver=virtualbox --force
echo "Instalação concluída"