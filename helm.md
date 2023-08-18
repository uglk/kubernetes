helm repo add jenkins https://charts.jenkins.io
helm repo update
helm pull jenkins/jenkins --untar
helm upgrade --install jenkins jenkins/


 kubectl exec -it jenkins-0 -c jenkins -- /bin/cat /run/secrets/additional/chart-admin-password && echo

  kubectl exec --namespace devops -it svc/jenkins -c jenkins -- /bin/cat /run/secrets/additional/chart-admin-password && echo