#!/bin/bash  
echo "Iniciando Script de instalação do Kubernetes"
echo "Fazendo o download do kubernetes com o kubectl"
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
echo "Dando permissão ao kubectl para ser executável"
chmod +x ./kubectl
echo "Movendo o kubectl para o PATH para facilitar a execução"
sudo mv ./kubectl /usr/local/bin/kubectl
echo "Instalação do kubernetes concluída"
