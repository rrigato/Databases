#have to do this everytime the computer is shutdown
start-dfs.sh
start-yarn.sh


#create a directory using hdfs
hadoop fs -mkdir -p /user/hadoop2

#lists all directories and files in /user/hadoop2
hadoop fs -ls 

#makes a directory where we will store a local file
hadoop fs -mkdir input3

# hadoop fs -put <local-src> <HDFS_dest_path>
#places a local file into hdfs
hadoop fs -put myout.txt /user/hadoop2/input3/myout.txt

#viewing information on the file you just placed in hdfs
hadoop fs -ls /user/hadoop2/input3

#getting the memory used from different directories
hadoop fs -du  /user/hadoop2/ /user/hadoop2/input3/myout.txt
