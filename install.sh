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

#give read and write permissions for the generated key value pairs
chmod 0600 ~/.ssh/authorized_keys 

#check to make sure Java is installed I have java 1.7.0
java -version


#move the tar file to the root /usr/include
mv /home/ryan/Downloads/hadoop-2.6.0.tar.gz /usr/local

#untar the file
 tar xzf hadoop-2.6.0.tar.gz

#rename to hadoop
mkdir hadoop
mv hadoop-2.6.0/* to hadoop/

#exit the superuser and change to hadoop2 user
exit
su hadoop2
