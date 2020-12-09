
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

# sudo systemctl status docker

# To avoid sudo for running Docker

sudo passwd ${USER}

sudo usermod -aG docker ${USER}

su - ${USER}

id -nG

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

