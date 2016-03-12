#make an input directory
mkdir input 

#copy text files from hadoop directory to ~
cp /usr/local/hadoop/*.txt input 
ls -l input 

#change to the directory where the mapreduce .jar example file is
cd /usr/local/hadoop/share/hadoop/mapreduce

#runs the wordcount example on the three text files that are
#in your input folder using the .jar mapreduce-examples
hadoop jar hadoop-mapreduce-examples-2.6.0.jar wordcount ~/input ~/output

#examine the output directory
#it has a file for _SUCCESS and the results of the mapreduce 
cd ~/output
