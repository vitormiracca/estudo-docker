# Config inicial EC2:
sudo yum update -y

# Instalação do Docker:
sudo yum install docker -y
sudo usermod -a -G docker ec2-user
newgrp docker

# Inicialização Docker
sudo service docker start
sudo systemctl enable docker
sudo service docker status

# Instalação do GIT
sudo yum install git -y
# clona e vai para a raiz do rep

# Build imagem (no diretorio onde está o Dockerfile)
sudo docker build -t nome-imagem .

# Container para rodar a imagem (8501 no caso de um streamlit)
sudo docker ps # verifica se tem algum container
sudo docker run -d -p 8501:8501 --name nome-container nome-imagem

docker inspect <id>