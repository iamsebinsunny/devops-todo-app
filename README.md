This is our BITS Pilani MTech DevOps Assignemnt.

Title: To-Do List

Team Members:

Sebin Sunny

Prashita Khunteta

Keerthi G

Srikesh Nair


# how to access argocd ui
kubectl port-forward svc/argocd-server -n argocd 8080:443

# argocd password can be found in argocd secret by running
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo


# how to access application via port forwarding

kubectl port-forward -n todo pods/todo-deployment-c96b48c56-fhgpb 8081:8080

