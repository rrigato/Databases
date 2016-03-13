#open up the .bashrc startup script once logged in as hadoop user
vim .bashrc

#add the following environment variables to the .bashrc file

#psuedo distributed Hadoop environment variables start
export HADOOP_HOME=/usr/local/hadoop 
export HADOOP_MAPRED_HOME=$HADOOP_HOME 
export HADOOP_COMMON_HOME=$HADOOP_HOME 
export HADOOP_HDFS_HOME=$HADOOP_HOME 
export YARN_HOME=$HADOOP_HOME 
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native 
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin 
export HADOOP_INSTALL=$HADOOP_HOME 
#psuedo distributed Hadoop environment variables end


#load the variables you added to the script
source ~/.bashrc

#navigate to the hadoop environment variables
cd $HADOOP_HOME/etc/hadoop
