* Terasort with user `neymar` using Kerberos

```
[neymar@util ~]$ time /bin/hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Ddfs.block.size=16777216 -Dmapreduce.job.maps=8 655360 /user/neymar/tgen640m
17/04/13 16:47:20 WARN security.UserGroupInformation: PriviledgedActionException as:neymar (auth:KERBEROS) cause:javax.security.sasl.SaslException: GSS initiate failed [Caused by GSSException: No valid credentials provided (Mechanism level: Failed to find any Kerberos tgt)]
17/04/13 16:47:20 WARN ipc.Client: Exception encountered while connecting to the server : javax.security.sasl.SaslException: GSS initiate failed [Caused by GSSException: No valid credentials provided (Mechanism level: Failed to find any Kerberos tgt)]
17/04/13 16:47:20 WARN security.UserGroupInformation: PriviledgedActionException as:neymar (auth:KERBEROS) cause:java.io.IOException: javax.security.sasl.SaslException: GSS initiate failed [Caused by GSSException: No valid credentials provided (Mechanism level: Failed to find any Kerberos tgt)]
java.io.IOException: Failed on local exception: java.io.IOException: javax.security.sasl.SaslException: GSS initiate failed [Caused by GSSException: No valid credentials provided (Mechanism level: Failed to find any Kerberos tgt)]; Host Details : local host is: "util.internal/10.0.5.157"; destination host is: "mas1.internal":8020; 
	at org.apache.hadoop.net.NetUtils.wrapException(NetUtils.java:772)
	at org.apache.hadoop.ipc.Client.call(Client.java:1476)
	at org.apache.hadoop.ipc.Client.call(Client.java:1409)
(...)

[neymar@util ~]$ kinit neymar
Password for neymar@FALLCONN.ES: 
[neymar@util ~]$ klist
Ticket cache: FILE:/tmp/krb5cc_2010
Default principal: neymar@FALLCONN.ES

Valid starting       Expires              Service principal
04/13/2017 16:46:02  04/14/2017 02:46:02  krbtgt/FALLCONN.ES@FALLCONN.ES
	renew until 04/14/2017 16:46:00
[neymar@util ~]$ time /bin/hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen 655360 /user/neymar/tgen640m
17/04/13 16:58:56 INFO client.RMProxy: Connecting to ResourceManager at mas1.internal/10.0.5.155:8032
17/04/13 16:58:56 INFO hdfs.DFSClient: Created token for neymar: HDFS_DELEGATION_TOKEN owner=neymar@FALLCONN.ES, renewer=yarn, realUser=, issueDate=1492113537118, maxDate=1492718337118, sequenceNumber=5, masterKeyId=4 on 10.0.5.155:8020
17/04/13 16:58:56 INFO security.TokenCache: Got dt for hdfs://mas1.internal:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 10.0.5.155:8020, Ident: (token for neymar: HDFS_DELEGATION_TOKEN owner=neymar@FALLCONN.ES, renewer=yarn, realUser=, issueDate=1492113537118, maxDate=1492718337118, sequenceNumber=5, masterKeyId=4)
17/04/13 16:58:57 INFO terasort.TeraGen: Generating 655360 using 2
17/04/13 16:58:57 INFO mapreduce.JobSubmitter: number of splits:2
17/04/13 16:58:57 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1492112545241_0005
17/04/13 16:58:57 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 10.0.5.155:8020, Ident: (token for neymar: HDFS_DELEGATION_TOKEN owner=neymar@FALLCONN.ES, renewer=yarn, realUser=, issueDate=1492113537118, maxDate=1492718337118, sequenceNumber=5, masterKeyId=4)
17/04/13 16:58:58 INFO impl.YarnClientImpl: Submitted application application_1492112545241_0005
17/04/13 16:58:58 INFO mapreduce.Job: The url to track the job: http://mas1.internal:8088/proxy/application_1492112545241_0005/
17/04/13 16:58:58 INFO mapreduce.Job: Running job: job_1492112545241_0005
17/04/13 16:59:09 INFO mapreduce.Job: Job job_1492112545241_0005 running in uber mode : false
17/04/13 16:59:09 INFO mapreduce.Job:  map 0% reduce 0%
17/04/13 16:59:23 INFO mapreduce.Job:  map 100% reduce 0%
17/04/13 16:59:24 INFO mapreduce.Job: Job job_1492112545241_0005 completed successfully
17/04/13 16:59:24 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=250622
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=167
		HDFS: Number of bytes written=65536000
		HDFS: Number of read operations=8
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=4
	Job Counters 
		Launched map tasks=2
		Other local map tasks=2
		Total time spent by all maps in occupied slots (ms)=22596
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=22596
		Total vcore-seconds taken by all map tasks=22596
		Total megabyte-seconds taken by all map tasks=23138304
	Map-Reduce Framework
		Map input records=655360
		Map output records=655360
		Input split bytes=167
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=201
		CPU time spent (ms)=5850
		Physical memory (bytes) snapshot=494329856
		Virtual memory (bytes) snapshot=3165462528
		Total committed heap usage (bytes)=632291328
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=1408100361519672
	File Input Format Counters 
		Bytes Read=0
	File Output Format Counters 
		Bytes Written=65536000

real	0m32.168s
user	0m7.490s
sys	0m0.806s
```
