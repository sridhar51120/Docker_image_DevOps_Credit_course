#! /bin/bash

echo -e "\033[33;43mUpdate Our Machine\033[0m"

sudo apt update -y

echo -e "\033[33;43mUpgrade Our Machine\033[0m"

sudo apt upgrade -y

echo -e "\033[33;43mInstall Git\033[0m"

sudo apt install git

echo -e "\033[33;43mInstall Curl\033[0m"


sudo apt install curl

echo -e "\033[33;43mInstall Htop\033[0m"


sudo apt install htop

echo -e "\033[33;43mInstall Wget\033[0m"


sudo apt install wget

echo -e "\033[33;43mStart the Process of Docker Installation\033[0m"


mkdir /usr/docker_install

cd /usr/docker_install

echo -e "\033[33;43mCopying File\033[0m"


cp Docker_install.sh /usr/

sudo chmod +x Docker_install.sh

./Docker_install.sh

echo -e "\033[33;43mCurrent Working Directory\033[0m"


echo -e "\033[33;43m$(pwd)\033[0m"


mkdir docker_flask

cd docker_flask

echo -e "\033[33;43mClone the Docker Project into Our Machine\033[0m"


gh repo clone sridhar51120/Sample_Docker_image_DevOps_Credit_course

cd Sample_Docker_image_DevOps_Credit_course

if test -e Dockerfile;then

    echo -e "\033[33;43mEnter Your Docker Image Name : \033[0m"

    read DockerTagName

    docker build -t $DockerTagName:1.0 .
    echo -e "\033[33;43mDocker Build is Completed\033[0m"

    echo -e "\033[33;43mEnter Your Container Name: \033[0m"
    read ContainerName

    echo -e "\033[33;43mEnter your Port Number: \033[0m"
    read PortNumber

    docker run -d $DockerTagName:1.0 -p 5000:$PortNumber $DockerTagName:1.0
    echo -e "\033[33;43mDocker Deployment Successfully Done\033[0m"

else
    echo -e "\033[33;43mDocker File doesn't Exists\033[0m"
    echo -e "\033[33;43mCheck the Github Access Methods private --> Change to public Access\033[0m"
    echo -e "\033[33;43mTry Again\033[0m"