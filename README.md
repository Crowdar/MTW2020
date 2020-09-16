# MTW 2020 
# QA Automation en un entorno DevOps con Lippia y Gitlab (Crowdar) 
---

 -  Presentacion
 -  Gitlab
    -  Instalacion
    -  Configuracion hosts
    -  Configuracion/verificacion de runner 
 - [Github/Crowdar](https://github.com/Crowdar)
 - Creacion de proyecto Automation web a partir de Maven Archetype.
    - ``` $ mvn archetype:generate -DarchetypeGroupId=io.lippia.archetypes -DarchetypeArtifactId=automationWebBasic -DarchetypeVersion=3.1.0.1 -DgroupId=com.mtw2020 -DartifactId=LippiaWebMTW2020 -Dversion=1.0-SNAPSHOT ```
- Creacion de proyecto Automation web de clone desde gitHub
  - ``` git clone https://github.com/Crowdar/lippia-web-sample-project.git lippiWebSampleMTW2020```
- Actualizacion de .gitlab-ci.yml
- Push de codigo
  ``` 
      cd existing_folder
      git init
      git remote add origin http://gitlab/root/[TU_REPO]
      git add .
      git commit -m "Initial commit"
      git push -u origin master
  ```
 - Ejecucion de pipeline y visualizacion de resultados