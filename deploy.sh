#!/bin/bash
docker stop cicd-app || true
docker rm cicd-app || true
docker pull pranjalgawale/cicd-app:latest
docker run -d -p 80:5000 --name cicd-app pranjalgawale/cicd-app:latest
