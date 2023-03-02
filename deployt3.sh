#!/usr/bin/env bash

#mvn clean package
#echo "Generate package"

#Copy execute_commands_on_ec2.sh file which has commands to be executed on server... Here we are copying this file
# every time to automate this process through 'deploy.sh' so that whenever that file changes, it's taken care of
scp -i "~/t2micro.ec2.pem" execute_commands_on_ec2.sh ec2-user@ec2-13-229-72-97.ap-southeast-1.compute.amazonaws.com:/home/ec2-user
echo "Copied latest 'execute_commands_on_ec2.sh' file from local machine to ec2 instance"


scp -i "~/t2micro.ec2.pem" Dockerfile ec2-user@ec2-13-229-72-97.ap-southeast-1.compute.amazonaws.com:/home/ec2-user
echo "Copied latest 'Dockerfile.sh' file from local machine to ec2 instance"

scp -i "~/t2micro.ec2.pem" docker-compose.yml ec2-user@ec2-13-229-72-97.ap-southeast-1.compute.amazonaws.com:/home/ec2-user
echo "Copied docker-compose file from local machine to ec2 instance"

scp -i "~/t2micro.ec2.pem" -r ./themes ec2-user@ec2-13-229-72-97.ap-southeast-1.compute.amazonaws.com:/home/ec2-user/
echo "Copied themes from local machine to ec2 instance"


ssh -i "~/t2micro.ec2.pem" ec2-user@ec2-13-229-72-97.ap-southeast-1.compute.amazonaws.com sudo chmod 775 'execute_commands_on_ec2.sh'
echo "Grant permision to excute_comands_on_ec2.sh"

echo "Connecting to ec2 instance and starting server using java -jar command"
ssh -i "~/t2micro.ec2.pem" ec2-user@ec2-13-229-72-97.ap-southeast-1.compute.amazonaws.com ./execute_commands_on_ec2.sh
