#Login as root user
sudo -s

#check to make sure you ar ethe root user
whoami

#adding a user, I choose hadoop2 with the same password
adduser hadoop2

#generate key-value pairs for login
#stored in /root/.ssh/
ssh-keygen -t rsa 

#moves the .ssh to authorized_keys
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys 


chmod 0600 ~/.ssh/authorized_keys 
