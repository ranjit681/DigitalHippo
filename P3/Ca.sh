






Copy the IP and paste url:9000
admin admin = admin123
Project Name: Onix-Website-Scan Same
Setup
with jenkins
github
Copy the Project Key: .scan
My account: Token: Sonarqube-Token | Copy and Save

Jenkins
Manage Plugins | Available Plugins [ SonarQube Scanner, SSH2 Easy,  ]

/manage/configureTools/
SonarQube Scanner -- Add SonarQube Scanner -- SonarScanner
Save

Configure/
SonarQube Servers -- Sonarqube Installation -- Sonar Server -- url:9000

Automated-Pipeline/Configure
Build Steps: Exexcute the SonarQube Scanner
Analysis Properties: Token /Scan

manage/Configure
Server Authentication Token: Add- Jenkins | Secret Text | ID : Sonar-Token
Select the Token

Build Now
 Goto SonarQube Check the status


Docker
sudo hostnamectl set-hostname docker
/bin/bash
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl status docker
sudo systemctl start docker

docker ps


sudo su jenkins

D-> sudo su
nano /etc/ssh/sshd_config
Uncomment Public Authentication yes | PasswordAuthentication Yes
systemctl restart sshd
passwd ubuntu

J-> ssh ubuntu@DockerIP
passwd
Exit

ssh-keygen
ssh-copy-id ubuntu@DockerIp


Go to Jenkins: 
manage/configure | Server Group Center : Docker-Servers | UN: ubuntu | Password: *****

Server List: SN: Docker-1| SP: DockerIP |

Automated-Pipeline/configure
Post-Build Actions: Add Build Step: Remote Shell | Target Server | Shell: touch test.txt| Build now


Goto D-> ls Check the file

Goto github: Create a file
Dockerfile
FROM nginx
COPY . /usr/share/nginx/html/
Save it

Automated-Pipeline/configure
Post Build Actions : Remove the remote shell | Execute Shell: scp ./* ubuntu @DIP:~/website/ 
Save


D-> Exit | ls | mkdir website | pwd | /home/ubuntu/website

Build Now

Automated-Pipeline/configure
Post-Build Actions : Shell: scp -r ./* ubuntu @DIP:~/website/
Build Now
 Goto D -> ls


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


