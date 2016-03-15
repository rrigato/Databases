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

#view the file in the hdfs
hadoop fs -cat /user/hadoop2/input3/myout.txt

## hadoop fs -get <hdfs_src> <localdst> 
#get a file from the hdfs
hadoop fs -get /user/hadoop2/input3/myout.txt /home/hadoop2/Documents/

hadoop fs -put file.txt /user/hadoop2/input3/file.txt

hadoop fs -mkdir /user/hadoop2/input2

#copy directories to a different directory
#places input3 into input2
# hadoop distcp <src-url> <dest-url>
hadoop distcp /user/hadoop2/input3/ /user/hadoop2/input2/
