#! bin/bash

#update path of cluster kubeconfig file
export KUBECONFIG=~/.kube/gardner
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml


#how to access argocd ui
kubectl port-forward svc/argocd-server -n argocd 8080:443


#how to access application via port forwarding
kubectl port-forward -n todo pods/todo-deployment-c96b48c56-fhgpb 8081:8080 