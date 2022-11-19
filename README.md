# devops-todo-app 

# how to access argocd ui
kubectl port-forward svc/argocd-server -n argocd 8080:443


# how to access application via port forwarding
kubectl port-forward -n todo pods/todo-deployment-c96b48c56-fhgpb 8081:8080 