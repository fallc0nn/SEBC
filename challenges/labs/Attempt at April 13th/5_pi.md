* Pi program from `ronaldo`:

```
[root@util ~]# su - ronaldo
[ronaldo@util ~]$ klist
klist: No credentials cache found (filename: /tmp/krb5cc_2016)
[ronaldo@util ~]$ kinit ronaldo
Password for ronaldo@FALLCONN.ES: 
[ronaldo@util ~]$ klist
Ticket cache: FILE:/tmp/krb5cc_2016
Default principal: ronaldo@FALLCONN.ES

Valid starting       Expires              Service principal
04/13/2017 17:01:55  04/14/2017 03:01:55  krbtgt/FALLCONN.ES@FALLCONN.ES
	renew until 04/14/2017 17:01:53
  
[ronaldo@util ~]$ yarn jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar pi 16 1000
Number of Maps  = 16
Samples per Map = 1000
Wrote input for Map #0
Wrote input for Map #1
Wrote input for Map #2
Wrote input for Map #3
Wrote input for Map #4
Wrote input for Map #5
Wrote input for Map #6
Wrote input for Map #7
Wrote input for Map #8
Wrote input for Map #9
Wrote input for Map #10
Wrote input for Map #11
Wrote input for Map #12
Wrote input for Map #13
Wrote input for Map #14
Wrote input for Map #15
Starting Job
17/04/13 17:03:42 INFO client.RMProxy: Connecting to ResourceManager at mas1.internal/10.0.5.155:8032
17/04/13 17:03:42 INFO hdfs.DFSClient: Created token for ronaldo: HDFS_DELEGATION_TOKEN owner=ronaldo@FALLCONN.ES, renewer=yarn, realUser=, issueDate=1492113822996, maxDate=1492718622996, sequenceNumber=6, masterKeyId=4 on 10.0.5.155:8020
17/04/13 17:03:42 INFO security.TokenCache: Got dt for hdfs://mas1.internal:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 10.0.5.155:8020, Ident: (token for ronaldo: HDFS_DELEGATION_TOKEN owner=ronaldo@FALLCONN.ES, renewer=yarn, realUser=, issueDate=1492113822996, maxDate=1492718622996, sequenceNumber=6, masterKeyId=4)
17/04/13 17:03:42 INFO input.FileInputFormat: Total input paths to process : 16
17/04/13 17:03:42 INFO mapreduce.JobSubmitter: number of splits:16
17/04/13 17:03:43 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1492112545241_0006
17/04/13 17:03:43 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 10.0.5.155:8020, Ident: (token for ronaldo: HDFS_DELEGATION_TOKEN owner=ronaldo@FALLCONN.ES, renewer=yarn, realUser=, issueDate=1492113822996, maxDate=1492718622996, sequenceNumber=6, masterKeyId=4)
17/04/13 17:03:43 INFO impl.YarnClientImpl: Submitted application application_1492112545241_0006
17/04/13 17:03:43 INFO mapreduce.Job: The url to track the job: http://mas1.internal:8088/proxy/application_1492112545241_0006/
17/04/13 17:03:43 INFO mapreduce.Job: Running job: job_1492112545241_0006
17/04/13 17:03:55 INFO mapreduce.Job: Job job_1492112545241_0006 running in uber mode : false
17/04/13 17:03:55 INFO mapreduce.Job:  map 0% reduce 0%
17/04/13 17:04:08 INFO mapreduce.Job:  map 19% reduce 0%
17/04/13 17:04:14 INFO mapreduce.Job:  map 69% reduce 0%
17/04/13 17:04:15 INFO mapreduce.Job:  map 81% reduce 0%
17/04/13 17:04:16 INFO mapreduce.Job:  map 88% reduce 0%
17/04/13 17:04:21 INFO mapreduce.Job:  map 100% reduce 0%
17/04/13 17:04:23 INFO mapreduce.Job:  map 100% reduce 100%
17/04/13 17:04:24 INFO mapreduce.Job: Job job_1492112545241_0006 completed successfully
17/04/13 17:04:24 INFO mapreduce.Job: Counters: 49
	File System Counters
		FILE: Number of bytes read=130
		FILE: Number of bytes written=2142404
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=4326
		HDFS: Number of bytes written=215
		HDFS: Number of read operations=67
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=3
	Job Counters 
		Launched map tasks=16
		Launched reduce tasks=1
		Data-local map tasks=16
		Total time spent by all maps in occupied slots (ms)=190125
		Total time spent by all reduces in occupied slots (ms)=4657
		Total time spent by all map tasks (ms)=190125
		Total time spent by all reduce tasks (ms)=4657
		Total vcore-seconds taken by all map tasks=190125
		Total vcore-seconds taken by all reduce tasks=4657
		Total megabyte-seconds taken by all map tasks=194688000
		Total megabyte-seconds taken by all reduce tasks=4768768
	Map-Reduce Framework
		Map input records=16
		Map output records=32
		Map output bytes=288
		Map output materialized bytes=544
		Input split bytes=2438
		Combine input records=0
		Combine output records=0
		Reduce input groups=2
		Reduce shuffle bytes=544
		Reduce input records=32
		Reduce output records=0
		Spilled Records=64
		Shuffled Maps =16
		Failed Shuffles=0
		Merged Map outputs=16
		GC time elapsed (ms)=1449
		CPU time spent (ms)=23330
		Physical memory (bytes) snapshot=7814553600
		Virtual memory (bytes) snapshot=26867757056
		Total committed heap usage (bytes)=9281470464
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters 
		Bytes Read=1888
	File Output Format Counters 
		Bytes Written=97
Job Finished in 42.219 seconds
Estimated value of Pi is 3.14250000000000000000
```
