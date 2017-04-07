* The hostname of your db server node
```
[root@ip-172-31-14-251 ~]# hostname -f
ip-172-31-14-251.ec2.internal
[root@ip-172-31-14-251 ~]# ps aux |grep -i [m]ysql
mysql    21530  0.1  2.9 5250404 441980 ?      Ssl  09:35   0:00 /usr/sbin/mysqld
```

* The command and output for display your database server's version
```
[root@ip-172-31-14-251 ~]# mysql -p -v
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 32
Server version: 10.1.22-MariaDB MariaDB Server
```

* The command and output for listing your created databases
```
MariaDB [(none)]> show databases;
--------------
show databases
--------------

+--------------------+
| Database           |
+--------------------+
| amon               |
| hive               |
| hue                |
| information_schema |
| mysql              |
| nav                |
| navms              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
+--------------------+
12 rows in set (0.00 sec)
```

