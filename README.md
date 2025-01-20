# AWS_Project_Using_Shell_Scripting
This project is created using shell scripting and AWS. We used linux(ubuntu).

In this project we monitored the resource usage of **EC2 instances,S3 buckets,Lambda functions,IAM users**. So here we have created a cron job which will run everyday at 6pm and monitor the usage of these resources and store the data in **resourceTracker** file and trace logs and store them in **backup.log** file

For this we created a file named **aws_resource_tracker.sh** where we run all commands to monitor the resource usage and for cron expression we entered into crontab -e command to go into crontab where we added below command:-

**0 18 * * * /home/ubuntu/aws_resource_tracker.sh >> /home/ubuntu/backup.log 2>&1**

To check the status of cron we can use this command:- **systemctl status cron** 

To check what all cron expressions are enabled use this command:- **crontab -l**
##########################################################
