#!/bin/bash

echo "##### Installing SonarQube with Docker #####"
docker pull sonarqube

echo "##### Adding volume that SonarQube needs #####"
mkdir -p /vagrant/.sonarqube
chown vagrant:vagrant /vagrant/.sonarqube
ln -sfn /vagrant/.sonarqube /home/vagrant/.sonarqube
chown -h vagrant:vagrant /home/vagrant/.sonarqube

echo "##### Running SonarQube with Docker #####"
sudo apt-get -yq update
docker run -d --name sonarqube -p 9000:9000 -v /home/vagrant/.sonarqube:/opt/sonarqube/data -v /home/vagrant/.sonarqube:/opt/sonarqube/extensions -v /home/vagrant/.sonarqube:/opt/sonarqube/logs -v /home/vagrant/.sonarqube:/opt/sonarqube/conf sonarqube