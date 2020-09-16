#!/bin/sh
# Get the registration token from:
# http://localhost:8080/root/${project}/settings/ci_cd

#Actualizar el registration_token y ejecutar con $. gitlab-runner-registration.sh
#si hacen cambios en la configuracion, ya sea external_url, network, etc....verificar los datos que se mandan por la api para que coincidan.

registration_token=LY1hxs2wisQEraKm9LUX

sudo docker exec -it gitlab_runnerX \
  gitlab-runner register \
    --non-interactive \
    --registration-token ${registration_token} \
    --locked=false \
    --description Docker19dind \
    --url "http://gitlab/" \
    --executor docker \
    --docker-image docker:19.03.0-dind \
    --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
    --docker-network-mode gitlab-network \
    --docker-privileged=true
    
