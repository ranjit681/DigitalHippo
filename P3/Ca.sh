






























Automated-Pipeline/configure
Post Build Actions: Add Build Steps: Remote Shell | shell cd /home/ubuntu/website

D-> docker ps
sudo usermod -aG docker ubuntu
newgrp docker

docker build -t mywebsite .
docker run -d -p 8085:80 --name=Onix-Website mywebsite
Save
Build Now

D >
Docker ps
Copy the IP od Docker and see the result


