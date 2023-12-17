

















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


