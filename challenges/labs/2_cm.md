Repos:

```
[root@ip-172-31-6-207 ~]# ls -lha /etc/yum.repos.d/
total 44K
drwxr-xr-x.  2 root root  170 Apr  7 09:56 .
drwxr-xr-x. 77 root root 8.0K Apr  7 09:58 ..
-rw-r--r--.  1 root root  232 Apr  7 09:56 cloudera-cdh5.repo
-rw-r--r--.  1 root root  203 Apr  7 09:56 cloudera-cm5.repo
-rw-r--r--.  1 root root  358 Oct 20 13:01 redhat.repo
-rw-r--r--.  1 root root  607 Apr  7 08:34 redhat-rhui-client-config.repo
-rw-r--r--.  1 root root 8.5K Apr  7 08:34 redhat-rhui.repo
-rw-r--r--.  1 root root   80 Apr  7 08:34 rhui-load-balancers.conf

[root@ip-172-31-6-207 ~]# yum repolist enabled
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
repo id                                                              repo name                                                                           status
cloudera-cdh5                                                        Cloudera's Distribution for Hadoop, Version 5                                          146
cloudera-cm5                                                         Cloudera Manager, Version 5.10.1                                                         7
rhui-REGION-client-config-server-7/x86_64                            Red Hat Update Infrastructure 2.0 Client Configuration Server 7                          6
rhui-REGION-rhel-server-releases/7Server/x86_64                      Red Hat Enterprise Linux Server 7 (RPMs)                                            14,050
rhui-REGION-rhel-server-rh-common/7Server/x86_64                     Red Hat Enterprise Linux Server 7 RH Common (RPMs)                                     225
repolist: 14,434
```

Database configuration (scm_prepare_database.sh script)
```
[root@ip-172-31-6-207 ec2-user]# cd /usr/share/cmf/schema/
[root@ip-172-31-6-207 schema]# ./scm_prepare_database.sh -h ip-172-31-14-251.ec2.internal mysql scm scm scm
JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera
Verifying that we can write to /etc/cloudera-scm-server
Creating SCM configuration file in /etc/cloudera-scm-server
Executing:  /usr/java/jdk1.7.0_67-cloudera/bin/java -cp /usr/share/java/mysql-connector-java.jar:/usr/share/java/oracle-connector-java.jar:/usr/share/cmf/schema/../lib/* com.cloudera.enterprise.dbutil.DbCommandExecutor /etc/cloudera-scm-server/db.properties com.cloudera.cmf.db.
[                          main] DbCommandExecutor              INFO  Successfully connected to database.
All done, your SCM database is configured correctly!
[root@ip-172-31-6-207 schema]# cd
[root@ip-172-31-6-207 ~]# systemctl enable cloudera-scm-server
[root@ip-172-31-6-207 ~]# systemctl start cloudera-scm-server
```
