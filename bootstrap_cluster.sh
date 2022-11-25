#! bin/bash

#update path of cluster kubeconfig file
export KUBECONFIG=~/.kube/gardner


#install argocd application
kubectl create ns argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl apply -f apps/argocd/application/argocd.application.yaml

#install todo-app application
kubectl apply -f apps/todo/application/todo.application.yaml
