#!/bin/bash
docker build -t myjenkins-master -f Dockerfile_Jenkins_Master.txt .
docker build -t mymaven-agent -f Dockerfile_Jenkins_Master.txt .
#docker run -it -d --name jenkins-master -p 48080:8080 -p 48081:50000 -v ~/jenkins/jenkins_home/:/var/jenkins_home myjenkins-master
#docker run -it -d --name myartifactory -p 5001:5000 -v ~/myartifactory/:/var/lib/registry -e SETTINGS_FLAVOR=local -e STORAGE_PATH=/registry -e SEARCH_BACKEND=sqlalchemy -e LOGLEVEL=DEBUG registry:2
#docker run -it -d --name mygit -p 48086:022 -p 48085:3000 -v ~/gogs:/data gogs/gogs