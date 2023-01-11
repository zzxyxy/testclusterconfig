Learnig argocd gitops settigns


helm install --create-namespace -n argocd argo-cd argocd/argo-cd --set server.ingress.enabled=true --set server.ingress.paths[0]='/' --set server.extraArgs[0]="--insecure" --set server.ingress.hosts[0]='argocd.localhost' -set controller.metrics.rules.enabled=true -set controller.metrics.serviceMonitor.enabled=true -set server.metrics.serviceMonitor.enabled=true


helm install --create-namespace -n argocd argo-cd argo/argo-cd  --set server.ingress.enabled=true --set server.ingress.paths\[0\]='/' --set server.extraArgs\[0\]="--insecure" --set server.ingress.hosts\[0\]='argocd.localhost'

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

helm install --create-namespace -n argocd argo-cd argocd/argo-cd -f value-argocd.yaml

helm upgrade --create-namespace -n argocd argo-cd argocd/argo-cd -f value-argocd.yaml
