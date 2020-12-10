
# Apply Updates
sudo apt update
sudo apt upgrade

# Install Java
sudo apt install -y openjdk-14-jdk

# Install Maven
sudo apt install -y maven
mvn -version

# Install GIT
sudo apt install -y git
git --version

# Install Docker
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

sudo apt update

apt-cache policy docker-ce

sudo apt install -y docker-ce

# Install Docker Compose

sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Install Node JS

sudo apt install -y nodejs

# Install npm

sudo apt install -y npm

# add these packages 

npm add axios

npm add react-router-dom

npm add formik


mkdir work

cd work

git clone https://github.com/lalitnagpal/docker.git

# sudo systemctl status docker

# So that we can login to Docker Hub

sudo chmod 666 /var/run/docker.sock

# Restart Docker

sudo systemctl restart docker

# To avoid sudo for running Docker

sudo passwd ${USER}

sudo usermod -aG docker ${USER}

sudo usermod -aG docker-compose ${USER}

su - ${USER}

id -nG

