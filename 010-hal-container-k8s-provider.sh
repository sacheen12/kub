hal config provider kubernetes enable

hal config provider kubernetes account add my-k8s-account --docker-registries my-docker-registry

hal config deploy edit --type distributed --account-name my-k8s-account

