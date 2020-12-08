
# Apply Updates
sudo apt update
sudo apt upgrade

# Install Java
sudo apt install openjdk-14-jdk

# Install Maven
sudo apt install maven
mvn -version

# Install GIT
sudo apt install git
git --version

# Install Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

sudo apt update

apt-cache policy docker-ce

sudo apt install docker-ce

# sudo systemctl status docker

# To avoid sudo for running Docker

sudo passwd ${USER}

sudo usermod -aG docker ${USER}

su - ${USER}

id -nG

mkdir work

cd work

git clone https://github.com/lalitnagpal/docker.git

