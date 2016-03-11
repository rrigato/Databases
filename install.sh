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

#exit the superuser
exit


#show hidden files, looking for .bashrc file
ls -la ~/ | more

#Add the following to the .bashrc file
#HADOOP VARIABLES START
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export HADOOP_INSTALL=/usr/local/hadoop
export PATH=$PATH:$HADOOP_INSTALL/bin
export PATH=$PATH:$HADOOP_INSTALL/sbin
export HADOOP_MAPRED_HOME=$HADOOP_INSTALL
export HADOOP_COMMON_HOME=$HADOOP_INSTALL
export HADOOP_HDFS_HOME=$HADOOP_INSTALL
export YARN_HOME=$HADOOP_INSTALL
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_INSTALL/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_INSTALL/lib"
#HADOOP VARIABLES END


#tell hadoop where the hadoop home is
# first we open the file with 
$ vim /usr/local/hadoop/etc/hadoop/hadoop-env.sh
# and change the following variable.
export JAVA_HOME=/usr/lib/jvm/java-7-oracle
