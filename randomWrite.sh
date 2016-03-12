# go to the example folder
cd /usr/local/hadoop/share/hadoop/mapreduce


#shows a list of programs to run using the mapreduce example folder
hadoop jar hadoop-mapreduce-examples-2.6.0.jar

#A map/reduce program that writes 10GB of random textual data per node
#place the output of the random text into the mapRedExamples directory
hadoop jar hadoop-mapreduce-examples-2.6.0.jar randomtextwriter ~/Documents/mapRedExamples



#takes the random text as an input and outputs the wordcount of each 
#word in that file
hadoop jar hadoop-mapreduce-examples-2.6.0.jar wordcount ~/Documents/mapRedExamples ~/Documents/mapRedExamples3


#navigate to where the output of the mapreduce random text is written
cd ~/Documents/mapRedExamples3
