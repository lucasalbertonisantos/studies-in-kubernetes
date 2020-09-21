#!/bin/bash  
echo "Iniciando Script de instalação do Mikikube Kubernetes"
#Caso não seja em uma máquina virtualizada, precisa instalar o virtualbox!
echo "Iniciando instalação do mikikube fazendo o download"
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
echo "Dando permissão ao kubectl para ser executável"
chmod +x minikube
echo "Movendo o mikikube para pasta do usuário"
sudo mv ./minikube /usr/local/bin/minikube
echo "Liberando acesso ao minikube"
sudo chown -R $USER $HOME/.minikube; chmod -R u+wrx $HOME/.minikube
echo "incluindo conntrack"
sudo apt-get install -y conntrack
echo "Instalação do Mikikube concluída"
echo "Iniciando o cluster do Minikube"
sudo minikube start --driver=none
echo "Dando permissão ao cluster para o usuário"
sudo mv /home/vagrant/.kube /home/vagrant/.minikube $HOME
sudo chown -R $USER $HOME/.kube $HOME/.minikube
echo "Instalação concluída e cluster do minikube iniciado!"
