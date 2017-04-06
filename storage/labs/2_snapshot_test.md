1.
```
[fallc0nn@hadoop00 ~]$ hadoop fs -mkdir /user/fallc0nn/precious
```

2. Snapshot taken on Hue's Web GUI for /user/fallc0nn/precious/

3.
```
[fallc0nn@hadoop00 ~]$ hadoop fs -put SEBC-master.zip /user/fallc0nn/precious/
[fallc0nn@hadoop00 ~]$ hadoop fs -rm -f SEBC-master.zip /user/fallc0nn/precious/SEBC-master.zip                                                       
17/04/05 09:17:37 INFO fs.TrashPolicyDefault: Moved: 'hdfs://hadoop00.ec2.internal:8020/user/fallc0nn/precious/SEBC-master.zip' to trash at: hdfs://hadoop00.ec2.internal:8020/user/fallc0nn/.Trash/Current/user/fallc0nn/precious/SEBC-master.zip
[fallc0nn@hadoop00 ~]$ hadoop fs -ls /user/fallc0nn/precious/
Found 1 items
-rw-r--r--   3 hdfs hadoop     473950 2017-04-05 09:27 /user/fallc0nn/precious/SEBC-master.zip
```

4. Restored

## See file 2_snapshot_list.png

