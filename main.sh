#! /bin/bash

echo "Update Our Machine"



sudo apt update -y

echo -e "\033[33;43mUpgrade Our Machine\033[0m"

sudo apt upgrade -y

echo -e "\033[33;43mInstall Git\033[0m"

sudo apt install git

echo "Install Curl"

sudo apt install curl

echo "Install Htop"

sudo apt install htop

echo "Install Wget"

sudo apt install wget

echo "Start the Process of Docker Installation"

mkdir /usr/docker_install

cd /usr/docker_install

echo "Copying File"

cp Docker_install.sh /usr/

sudo chmod +x Docker_install.sh

./Docker_install.sh

echo "Current Working Directory"

echo "$(pwd)"

mkdir docker_flask

cd docker_flask

echo "Clone the Docker Project into Our Machine"

gh repo clone sridhar51120/Sample_Docker_image_DevOps_Credit_course

cd Sample_Docker_image_DevOps_Credit_course

if test -e Dockerfile;then

    echo "Enter Your Docker Image Name : "
    read DockerTagName

    docker build -t $DockerTagName:1.0 .
    echo "Docker Build is Completed"

    echo "Enter Your Container Name: "
    read ContainerName

    echo "Enter your Port Number: "
    read PortNumber

    docker run -d $DockerTagName:1.0 -p 5000:$PortNumber $DockerTagName:1.0
    echo "Docker Deployment Successfully Done"

else
    echo "Docker File doesn't Exists"
    echo "Check the Github Access Methods private --> Change to public Access"
    echo "Try Again"