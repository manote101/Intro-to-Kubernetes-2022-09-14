# create pod with command line
kubectl run mynginx --image=nginx
kubectl get pod -o wide
kubectl describe pod mynginx

# create pod with manifest (YAML) file (Infrastruct as Code)
kubectl apply -f pod-single.yaml

# check pod IP address
kubectl get pod -o wide


# create second pod with CLI 
kubectl apply -f pod-exam.yaml

# check pod IP address
kubectl get pod -o wide

# notice that myapp-pod was recently created
kubectl get pod -w
kubectl logs myapp-pod





# when you finish, run cleanup
kubectl delete pod --all
