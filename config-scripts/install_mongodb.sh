#!/bin/bash
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
# Проблемы с аутентификацией репозитория, в котором находится mongodb. Ключ [trusted=yes] помогает решить эту проблему
sudo bash -c 'echo "deb [trusted=yes] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
sudo apt update
sudo apt install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
