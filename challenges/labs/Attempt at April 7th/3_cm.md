HDFS user directories:
```
[root@ip-172-31-14-251 ~]# sudo -u hdfs hdfs dfs -mkdir /user/neymar
[root@ip-172-31-14-251 ~]# sudo -u hdfs hdfs dfs -mkdir /user/ronaldo
[root@ip-172-31-14-251 ~]# sudo -u hdfs hdfs dfs -ls /user
Found 6 items
drwxrwxrwx   - mapred hadoop              0 2017-04-07 10:46 /user/history
drwxrwxr-t   - hive   hive                0 2017-04-07 10:46 /user/hive
drwxrwxr-x   - hue    hue                 0 2017-04-07 10:47 /user/hue
drwxr-xr-x   - hdfs   supergroup          0 2017-04-07 10:53 /user/neymar
drwxrwxr-x   - oozie  oozie               0 2017-04-07 10:47 /user/oozie
drwxr-xr-x   - hdfs   supergroup          0 2017-04-07 10:53 /user/ronaldo
```

The output from the CM API call `../api/v14/hosts`
```
❯ curl -X POST -u admin:123qwe4r http://54.165.239.2:7180/api/v14/hosts
{
  "message" : "Double-check the URL. Consider adding '\"Content-Type: application/json\"' to your HTTP headers if the URL expects JSON input."
}%                                                                                                                                                             
```


