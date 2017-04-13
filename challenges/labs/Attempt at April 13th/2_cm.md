* Cloudera repo file in `mas2.internal`

```
[root@mas2 ~]# ls -lha /etc/yum.repos.d
total 56K
drwxr-xr-x.  2 root root  278 Apr 13 10:57 .
drwxr-xr-x. 77 root root 8.0K Apr 13 11:10 ..
-rw-r--r--.  1 root root 1.7K Nov 29 16:12 CentOS-Base.repo
-rw-r--r--.  1 root root 1.3K Nov 29 16:12 CentOS-CR.repo
-rw-r--r--.  1 root root  649 Nov 29 16:12 CentOS-Debuginfo.repo
-rw-r--r--.  1 root root  314 Nov 29 16:12 CentOS-fasttrack.repo
-rw-r--r--.  1 root root  630 Nov 29 16:12 CentOS-Media.repo
-rw-r--r--.  1 root root 1.3K Nov 29 16:12 CentOS-Sources.repo
-rw-r--r--.  1 root root 2.9K Nov 29 16:12 CentOS-Vault.repo
-rw-r--r--   1 root root  180 Apr 13 10:57 cloudera-manager.repo
-rw-r--r--.  1 root root  957 Dec 27 15:37 epel.repo
-rw-r--r--.  1 root root 1.1K Dec 27 15:37 epel-testing.repo
-rw-r--r--   1 root root  261 Apr 13 09:49 mariadb.repo
```

* Use the scm_prepare_database.sh script to write your db.properties file
  * List the full command line in `2_cm.md`

```
[root@mas2 ~]# cd /usr/share/cmf/schema/ && ./scm_prepare_database.sh -h mas1.internal mysql scm scm scm
JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera
Verifying that we can write to /etc/cloudera-scm-server
Creating SCM configuration file in /etc/cloudera-scm-server
Executing:  /usr/java/jdk1.7.0_67-cloudera/bin/java -cp /usr/share/java/mysql-connector-java.jar:/usr/share/java/oracle-connector-java.jar:/usr/share/cmf/schema/../lib/* com.cloudera.enterprise.dbutil.DbCommandExecutor /etc/cloudera-scm-server/db.properties com.cloudera.cmf.db.
[                          main] DbCommandExecutor              INFO  Successfully connected to database.
All done, your SCM database is configured correctly!
```
