* Put the following in the file `challenges/labs/4_teragen.md`
* The full `teragen` command and job output

```
[root@util ~]# su - neymar
Last login: Thu Apr 13 12:21:57 -03 2017 on pts/0
[neymar@util ~]$ time /bin/hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Ddfs.block.size=16777216 -Dmapreduce.job.maps=8 655360 /user/neymar/tgen640
17/04/13 12:24:57 INFO client.RMProxy: Connecting to ResourceManager at mas1.internal/10.0.5.155:8032
17/04/13 12:24:58 INFO terasort.TeraGen: Generating 655360 using 8
17/04/13 12:24:59 INFO mapreduce.JobSubmitter: number of splits:8
17/04/13 12:24:59 INFO Configuration.deprecation: dfs.block.size is deprecated. Instead, use dfs.blocksize
17/04/13 12:24:59 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1492095313776_0001
17/04/13 12:25:00 INFO impl.YarnClientImpl: Submitted application application_1492095313776_0001
17/04/13 12:25:00 INFO mapreduce.Job: The url to track the job: http://mas1.internal:8088/proxy/application_1492095313776_0001/
17/04/13 12:25:00 INFO mapreduce.Job: Running job: job_1492095313776_0001
17/04/13 12:25:09 INFO mapreduce.Job: Job job_1492095313776_0001 running in uber mode : false
17/04/13 12:25:09 INFO mapreduce.Job:  map 0% reduce 0%
17/04/13 12:25:19 INFO mapreduce.Job:  map 25% reduce 0%
17/04/13 12:25:21 INFO mapreduce.Job:  map 38% reduce 0%
17/04/13 12:25:22 INFO mapreduce.Job:  map 100% reduce 0%
17/04/13 12:25:22 INFO mapreduce.Job: Job job_1492095313776_0001 completed successfully
17/04/13 12:25:22 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=996488
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
		Total time spent by all maps in occupied slots (ms)=73572
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=73572
		Total vcore-seconds taken by all map tasks=73572
		Total megabyte-seconds taken by all map tasks=75337728
	Map-Reduce Framework
		Map input records=655360
		Map output records=655360
		Input split bytes=677
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=1310
		CPU time spent (ms)=20820
		Physical memory (bytes) snapshot=1999249408
		Virtual memory (bytes) snapshot=12630355968
		Total committed heap usage (bytes)=2529165312
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=1408100361519672
	File Input Format Counters 
		Bytes Read=0
	File Output Format Counters 
		Bytes Written=65536000

real	0m28.628s
user	0m7.048s
sys	0m0.685s
```

* The result of the `time` command

```
real	0m28.628s
user	0m7.048s
sys	0m0.685s
```

* The command and output of `hdfs dfs -ls /user/neymar/tgen640`

```
[neymar@util ~]$ hdfs dfs -ls /user/neymar/tgen640
Found 9 items
-rw-r--r--   3 neymar neymar          0 2017-04-13 12:25 /user/neymar/tgen640/_SUCCESS
-rw-r--r--   3 neymar neymar    8192000 2017-04-13 12:25 /user/neymar/tgen640/part-m-00000
-rw-r--r--   3 neymar neymar    8192000 2017-04-13 12:25 /user/neymar/tgen640/part-m-00001
-rw-r--r--   3 neymar neymar    8192000 2017-04-13 12:25 /user/neymar/tgen640/part-m-00002
-rw-r--r--   3 neymar neymar    8192000 2017-04-13 12:25 /user/neymar/tgen640/part-m-00003
-rw-r--r--   3 neymar neymar    8192000 2017-04-13 12:25 /user/neymar/tgen640/part-m-00004
-rw-r--r--   3 neymar neymar    8192000 2017-04-13 12:25 /user/neymar/tgen640/part-m-00005
-rw-r--r--   3 neymar neymar    8192000 2017-04-13 12:25 /user/neymar/tgen640/part-m-00006
-rw-r--r--   3 neymar neymar    8192000 2017-04-13 12:25 /user/neymar/tgen640/part-m-00007

```

* The command and output to show how many blocks are stored under this directory

```
[neymar@util ~]$ hdfs fsck /user/neymar/tgen640 -files -blocks
Connecting to namenode via http://mas1.internal:50070
FSCK started by neymar (auth:SIMPLE) from /10.0.5.157 for path /user/neymar/tgen640 at Thu Apr 13 12:29:31 BRT 2017
/user/neymar/tgen640 <dir>
/user/neymar/tgen640/_SUCCESS 0 bytes, 0 block(s):  OK

/user/neymar/tgen640/part-m-00000 8192000 bytes, 1 block(s):  OK
0. BP-1701354361-10.0.5.155-1492095252708:blk_1073742527_1703 len=8192000 Live_repl=3

/user/neymar/tgen640/part-m-00001 8192000 bytes, 1 block(s):  OK
0. BP-1701354361-10.0.5.155-1492095252708:blk_1073742526_1702 len=8192000 Live_repl=3

/user/neymar/tgen640/part-m-00002 8192000 bytes, 1 block(s):  OK
0. BP-1701354361-10.0.5.155-1492095252708:blk_1073742533_1709 len=8192000 Live_repl=3

/user/neymar/tgen640/part-m-00003 8192000 bytes, 1 block(s):  OK
0. BP-1701354361-10.0.5.155-1492095252708:blk_1073742532_1708 len=8192000 Live_repl=3

/user/neymar/tgen640/part-m-00004 8192000 bytes, 1 block(s):  OK
0. BP-1701354361-10.0.5.155-1492095252708:blk_1073742531_1707 len=8192000 Live_repl=3

/user/neymar/tgen640/part-m-00005 8192000 bytes, 1 block(s):  OK
0. BP-1701354361-10.0.5.155-1492095252708:blk_1073742529_1705 len=8192000 Live_repl=3

/user/neymar/tgen640/part-m-00006 8192000 bytes, 1 block(s):  OK
0. BP-1701354361-10.0.5.155-1492095252708:blk_1073742534_1710 len=8192000 Live_repl=3

/user/neymar/tgen640/part-m-00007 8192000 bytes, 1 block(s):  OK
0. BP-1701354361-10.0.5.155-1492095252708:blk_1073742530_1706 len=8192000 Live_repl=3

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
FSCK ended at Thu Apr 13 12:29:31 BRT 2017 in 6 milliseconds


The filesystem under path '/user/neymar/tgen640' is HEALTHY
```
