# How to use

## Story
Please read the README.md file to understand what the task was.

## To setup the project
- Create EBS volume in AWS with the following command (When changing AZ make sure it matches with EBS Volume's AZ): 
aws ec2 create-volume --availability-zone=eu-central-1c --size=5 --volume-type=gp2 
- Change EBSVolume.volumeID in values.yaml to match your EBS Volume's id
- Run bash setup.sh command

## Usage
- Run kubectl exec -it {PodName} --  psql -h localhost -U admin --password -p 5432 postgresdb command to get into psql.
- Now you can work in psql.
- Type exit when you're done with your work.

## Tear down
- Run bash teardown.sh command to tear down your EKS cluster.
- Delete EBS Volume manually.