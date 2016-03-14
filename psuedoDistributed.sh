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

#add the following to the core-site.xml
#may have to log in as the superuser if the file is in read-only
vim core-site.xml


<configuration>

   <property>
    <name>fs.default.name</name>
      <value>hdfs://localhost:9000</value> 
   </property>
 
</configuration>


#adding to the hdfs-site.xml
#tells where the data and namenode directories are
vim hdfs-site.xml

<configuration>

   <property>
      <name>dfs.name.dir</name>
      <value>file:///home/hadoop2/hadoopinfra/hdfs/namenode </value>
   </property>

   <property>
      <name>dfs.data.dir</name>
      <value>file:///home/hadoop2/hadoopinfra/hdfs/datanode </value>
   </property>

   <property>
      <name>dfs.replication</name>
      <value>1</value>
   </property>
       
</configuration>




#configure YARN into Hadoop
<configuration>
 
   <property>
      <name>yarn.nodemanager.aux-services</name>
      <value>mapreduce_shuffle</value> 
   </property>
  
</configuration>


#copy the template provided from installation
cp mapred-site.xml.template mapred-site.xml 

#Configure the new file
vim mapred-site.xml


<configuration>
 
   <property> 
      <name>mapreduce.framework.name</name>
      <value>yarn</value>
   </property>
   
</configuration>


#formatting the namenode
#it should have INFO util.ExitUtil: Exiting with status 0
#if it is set up sucessfully 
#only do this once or else you will delete all your data
cd ~ 
hdfs namenode -format 

#make sure hadoop2 user has proper permissions
sudo chown -R hadoop2 /usr/local/hadoop/

#Starts the hadoop file system
start-dfs.sh 

#starts the YARN script which runs the YARN daemons
start-yarn.sh

#the overview of the hadoop cluster can be viewed in a browser
#the default port for hadoop is 50070
http://localhost:50070/

#access all applications of a cluster
#the default port is 8088
http://localhost:8088/


