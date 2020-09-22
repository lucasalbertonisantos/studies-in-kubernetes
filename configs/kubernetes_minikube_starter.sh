#!/bin/bash
echo "Iniciando o cluster do Minikube"
sudo minikube start --driver=none
echo "Dando permissão ao cluster para o usuário"
sudo mv /home/vagrant/.kube /home/vagrant/.minikube $HOME
sudo chown -R $USER $HOME/.kube $HOME/.minikube
echo "Cluster do minikube iniciado!"
