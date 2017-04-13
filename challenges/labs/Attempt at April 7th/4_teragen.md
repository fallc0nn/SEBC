Teragen:

```
[neymar@ip-172-31-14-251 ~]$ time /bin/hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Ddfs.block.size=16777216 -Dmapreduce.job.maps=8 655360 /user/neymar/tgen640
17/04/07 11:32:46 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-6-207.ec2.internal/172.31.6.207:8032
17/04/07 11:32:47 INFO terasort.TeraGen: Generating 655360 using 8
17/04/07 11:32:47 INFO mapreduce.JobSubmitter: number of splits:8
17/04/07 11:32:47 INFO Configuration.deprecation: dfs.block.size is deprecated. Instead, use dfs.blocksize
17/04/07 11:32:47 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1491576378589_0002
17/04/07 11:32:47 INFO impl.YarnClientImpl: Submitted application application_1491576378589_0002
17/04/07 11:32:48 INFO mapreduce.Job: The url to track the job: http://ip-172-31-6-207.ec2.internal:8088/proxy/application_1491576378589_0002/
17/04/07 11:32:48 INFO mapreduce.Job: Running job: job_1491576378589_0002
17/04/07 11:32:54 INFO mapreduce.Job: Job job_1491576378589_0002 running in uber mode : false
17/04/07 11:32:54 INFO mapreduce.Job:  map 0% reduce 0%
17/04/07 11:33:06 INFO mapreduce.Job:  map 75% reduce 0%
17/04/07 11:33:07 INFO mapreduce.Job:  map 100% reduce 0%
17/04/07 11:33:07 INFO mapreduce.Job: Job job_1491576378589_0002 completed successfully
17/04/07 11:33:07 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=998560
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=677
		HDFS: Number of bytes written=65536000
		HDFS: Number of read operations=32
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=16
	Job Counters 
		Launched map tasks=8
		Other local map tasks=8
		Total time spent by all maps in occupied slots (ms)=81662
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=81662
		Total vcore-seconds taken by all map tasks=81662
		Total megabyte-seconds taken by all map tasks=83621888
	Map-Reduce Framework
		Map input records=655360
		Map output records=655360
		Input split bytes=677
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=914
		CPU time spent (ms)=19270
		Physical memory (bytes) snapshot=1857859584
		Virtual memory (bytes) snapshot=12638273536
		Total committed heap usage (bytes)=2319450112
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=1408100361519672
	File Input Format Counters 
		Bytes Read=0
	File Output Format Counters 
		Bytes Written=65536000

real	0m23.097s
user	0m6.014s
sys	0m0.282s

[neymar@ip-172-31-14-251 ~]$ hdfs dfs -ls /user/neymar/tgen640
Found 9 items
-rw-r--r--   3 neymar neymar          0 2017-04-07 11:33 /user/neymar/tgen640/_SUCCESS
-rw-r--r--   3 neymar neymar    8192000 2017-04-07 11:33 /user/neymar/tgen640/part-m-00000
-rw-r--r--   3 neymar neymar    8192000 2017-04-07 11:33 /user/neymar/tgen640/part-m-00001
-rw-r--r--   3 neymar neymar    8192000 2017-04-07 11:33 /user/neymar/tgen640/part-m-00002
-rw-r--r--   3 neymar neymar    8192000 2017-04-07 11:33 /user/neymar/tgen640/part-m-00003
-rw-r--r--   3 neymar neymar    8192000 2017-04-07 11:33 /user/neymar/tgen640/part-m-00004
-rw-r--r--   3 neymar neymar    8192000 2017-04-07 11:33 /user/neymar/tgen640/part-m-00005
-rw-r--r--   3 neymar neymar    8192000 2017-04-07 11:33 /user/neymar/tgen640/part-m-00006
-rw-r--r--   3 neymar neymar    8192000 2017-04-07 11:33 /user/neymar/tgen640/part-m-00007

[neymar@ip-172-31-14-251 ~]$ hdfs fsck /user/neymar/tgen640 -files -blocks
Connecting to namenode via http://ip-172-31-0-109.ec2.internal:50070
FSCK started by neymar (auth:SIMPLE) from /172.31.14.251 for path /user/neymar/tgen640 at Fri Apr 07 11:38:17 EDT 2017
/user/neymar/tgen640 <dir>
/user/neymar/tgen640/_SUCCESS 0 bytes, 0 block(s):  OK

/user/neymar/tgen640/part-m-00000 8192000 bytes, 1 block(s):  OK
0. BP-585619420-172.31.0.109-1491576331215:blk_1073742567_1743 len=8192000 Live_repl=3

/user/neymar/tgen640/part-m-00001 8192000 bytes, 1 block(s):  OK
0. BP-585619420-172.31.0.109-1491576331215:blk_1073742565_1741 len=8192000 Live_repl=3

/user/neymar/tgen640/part-m-00002 8192000 bytes, 1 block(s):  OK
0. BP-585619420-172.31.0.109-1491576331215:blk_1073742563_1739 len=8192000 Live_repl=3

/user/neymar/tgen640/part-m-00003 8192000 bytes, 1 block(s):  OK
0. BP-585619420-172.31.0.109-1491576331215:blk_1073742566_1742 len=8192000 Live_repl=3

/user/neymar/tgen640/part-m-00004 8192000 bytes, 1 block(s):  OK
0. BP-585619420-172.31.0.109-1491576331215:blk_1073742564_1740 len=8192000 Live_repl=3

/user/neymar/tgen640/part-m-00005 8192000 bytes, 1 block(s):  OK
0. BP-585619420-172.31.0.109-1491576331215:blk_1073742568_1744 len=8192000 Live_repl=3

/user/neymar/tgen640/part-m-00006 8192000 bytes, 1 block(s):  OK
0. BP-585619420-172.31.0.109-1491576331215:blk_1073742572_1748 len=8192000 Live_repl=3

/user/neymar/tgen640/part-m-00007 8192000 bytes, 1 block(s):  OK
0. BP-585619420-172.31.0.109-1491576331215:blk_1073742571_1747 len=8192000 Live_repl=3

Status: HEALTHY
 Total size:	65536000 B
 Total dirs:	1
 Total files:	9
 Total symlinks:		0
 Total blocks (validated):	8 (avg. block size 8192000 B)
 Minimally replicated blocks:	8 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		3
 Number of racks:		1
FSCK ended at Fri Apr 07 11:38:17 EDT 2017 in 2 milliseconds


The filesystem under path '/user/neymar/tgen640' is HEALTHY
```
