export ADDRESS=index.docker.io
export REPOSITORIES=YOUR-USER/YOUR-REPO
export USERNAME=YOUR-USER

hal config provider docker-registry enable

hal config provider docker-registry account add my-docker-registry \
    --address $ADDRESS \
    --repositories $REPOSITORIES \
    --username $USERNAME \
    --password

# hal config provider docker-registry account list

