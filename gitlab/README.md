# Step by step
 
 - 1- docker-compose up -d 
 - 3- ejecutar ``` sudo nano /etc/hosts ``` 
 - 4- agregar esta linea para mapear la url con nuestro equipo 
  ``` 127.0.0.1        gitlab ```
 - 5- acceder a gitlab desde un navegador http://gitlab. 
 - 6- copiar el token de registracion de runners desde http://gitlab/admin/runners. 
 - 7- editar la variable "registration_token" del archivo gitlab-runner-register.sh con el valor previamente copiado 
  ``` nano gitlab-runner-register.sh ``` 
 - 8- desde una consola, posicionado en el directorio raiz ejecutar 
  ```$. gitlab-runner-register.sh ```
  no debe arrojar errores.
 - 9- verificar que se haya registrado correctamente el runner en http://gitlab/admin/runners. 
  
  
Nota: Hay variables definidas en el archivo .env que son consumidas por docker-compose. 

---------------------------------------------------------------------------------------------------------
### Readme heredado de https://github.com/mgcrea/docker-compose-gitlab-ce.git
--------------------------------------------------------------------------------------------------------- 

--------------------------------------------------------------------------------------------------------- 







# Compose file for Gitlab Community Edition

[![License](https://img.shields.io/github/license/mgcrea/docker-compose-gitlab-ce.svg?style=flat)](https://tldrlegal.com/license/mit-license)
[![Docker Stars](https://img.shields.io/docker/stars/gitlab/gitlab-ce.svg)](https://registry.hub.docker.com/u/gitlab/gitlab-ce/)
[![Docker Pulls](https://img.shields.io/docker/pulls/gitlab/gitlab-ce.svg)](https://registry.hub.docker.com/u/gitlab/gitlab-ce/)

Working `docker-compose.yml` for official [gitlab-ce](https://hub.docker.com/r/gitlab/gitlab-ce) docker images leveraging separate instances for services:

- Uses official [postgres](https://hub.docker.com/_/postgres/) docker image
- Uses official [redis](https://hub.docker.com/_/redis/) docker image
- Comes with a [gitlab-runner](https://hub.docker.com/r/gitlab/gitlab-runner/) instance

Made to work behind a separate automated [nginx-proxy](https://github.com/jwilder/nginx-proxy) with SSL support via letsencrypt.


## Quickstart

- You can quickly start your compose gitlab instance (requires a working automated nginx_proxy compose instance)

```bash
git clone git@github.com:mgcrea/docker-compose-gitlab-ce.git gitlab; cd $_
cp .env.default .env; nano .env
make
docker-compose up -d
```


## Check postgres bundled version

```bash
source .env
docker run --rm -it gitlab/gitlab-ce:${GITLAB_CE_VERSION} postgres --version
```

## Templates

- [gitlab.rb](https://gitlab.com/gitlab-org/omnibus-gitlab/blob/master/files/gitlab-config-template/gitlab.rb.template)

## Related Documentation

- [Gitlab installation](https://docs.gitlab.com/ce/install/docker.html)
- [GitLab Docker images](https://docs.gitlab.com/omnibus/docker/)
- [GitLab CI Docker images](https://docs.gitlab.com/ce/ci/docker/using_docker_images.html)
- [Using a non-bundled web-server](https://docs.gitlab.com/omnibus/settings/nginx.html#using-a-non-bundled-web-server)

