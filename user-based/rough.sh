kubectl config set-credentials ${USER} \
  --client-certificate=$(pwd)/${USER}.crt \
  --client-key=$(pwd)/${USER}.key \
  --embed-certs=true

kubectl config set-context ${USER}-${NAMESPACE} \
--cluster=${CLUSTER} \
--user=${USER} \
--namespace=${NAMESPACE}