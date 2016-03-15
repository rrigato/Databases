#have to do this everytime the computer is shutdown
start-dfs.sh
start-yarn.sh

#create a sample.txt file using vim
vim sample.txt

#add the following data
1979   23   23   2   43   24   25   26   26   26   26   25   26  25 
1980   26   27   28  28   28   30   31   31   31   30   30   30  29 
1981   31   32   32  32   33   34   35   36   36   34   34   34  34 
1984   39   38   39  39   39   41   42   43   40   39   38   38  40 
1985   38   39   39  39   39   41   41   41   00   40   39   39  45 

#add the created file to hdfs
hadoop fs -mkdir /user/hadoop2/input/


#This is the Java file that will contain the MapReduce class
