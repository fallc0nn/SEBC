## MariaDB 10 with Replica (Supported by Cloudera)
1. Config files (bind-address to avoid loopback only address, replication config, all the rest is Cloudera sample config)
```
# cat /etc/my.cnf
[mysqld]
transaction-isolation = READ-COMMITTED
# Disabling symbolic-links is recommended to prevent assorted security risks;
# to do so, uncomment this line:
# symbolic-links = 0

key_buffer = 16M
key_buffer_size = 32M
max_allowed_packet = 32M
thread_stack = 256K
thread_cache_size = 64
query_cache_limit = 8M
query_cache_size = 64M
query_cache_type = 1

max_connections = 550
#expire_logs_days = 10
#max_binlog_size = 100M

#log_bin should be on a disk with enough free space. Replace '/var/lib/mysql/mysql_binary_log' with an appropriate path for your system
#and chown the specified folder to the mysql user.
log_bin=/var/lib/mysql/mysql_binary_log

binlog_format = mixed

read_buffer_size = 2M
read_rnd_buffer_size = 16M
sort_buffer_size = 8M
join_buffer_size = 8M

# InnoDB settings
innodb_file_per_table = 1
innodb_flush_log_at_trx_commit  = 2
innodb_log_buffer_size = 64M
innodb_buffer_pool_size = 4G
innodb_thread_concurrency = 8
innodb_flush_method = O_DIRECT
innodb_log_file_size = 512M

#Replication
sort_buffer_size = 8M
join_buffer_size = 8M

# InnoDB settings
innodb_file_per_table = 1
innodb_flush_log_at_trx_commit  = 2
innodb_log_buffer_size = 64M
innodb_buffer_pool_size = 4G
innodb_thread_concurrency = 8
innodb_flush_method = O_DIRECT
innodb_log_file_size = 512M

#Replication
server_id=1 # 2 in replica
log-basename=master1 # master2 in replica
bind-address=172.31.12.155 # changed in replica

[mysqld_safe]
log-error=/var/log/mariadb/mariadb.log
pid-file=/var/run/mariadb/mariadb.pid

```

2. Databases
```
MariaDB [(none)]> show databases;                                                                                                                     
+--------------------+
| Database           |
+--------------------+
| amon               |
| information_schema |
| metastore          |
| mysql              |
| nav                |
| navms              |
| oozie              |
| performance_schema |
| rman               |
| sentry             |
+--------------------+
10 rows in set (0.00 sec)
```

3. GRANTS (each DB has a user with the same name of DB)
```
MariaDB [(none)]> show grants for amon;
ERROR 1141 (42000): There is no such grant defined for user 'amon' on host '%'
MariaDB [(none)]> show grants for 'amon'@'localhost';
+-------------------------------------------------------------------------------------------------------------+
| Grants for amon@localhost                                                                                   |
+-------------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'amon'@'localhost' IDENTIFIED BY PASSWORD '*4A1243A12C2625553EC0465DD4E640DB056AA07A' |
| GRANT ALL PRIVILEGES ON `amon`.* TO 'amon'@'localhost'                                                      |
+-------------------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)
```

4. Replication
```
MariaDB [(none)]> show grants for replication_user;
+-----------------------------------------------------------------------------------------------------------------------------+
| Grants for replication_user@%                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------+
| GRANT REPLICATION SLAVE ON *.* TO 'replication_user'@'%' IDENTIFIED BY PASSWORD '*C645F4D009CD34B44B3D496F538C6044B5E3126C' |
+-----------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [(none)]> show master status;
+--------------------+----------+--------------+------------------+
| File               | Position | Binlog_Do_DB | Binlog_Ignore_DB |
+--------------------+----------+--------------+------------------+
| master1-bin.000002 |     1408 |              |                  |
+--------------------+----------+--------------+------------------+
1 row in set (0.00 sec)

MariaDB [(none)]> show slave status;
(...)
| Waiting for master to send event | hadoop00.ec2.internal | replication_user |        3306 |            10 | master1-bin.000003 |                 329 | master2-relay-bin.000002 |           539 | master1-bin.000003    | Yes              | Yes               |                 |                     |                    |                        |                         |                             |          0 |            |            0 |                 329 |             839 | None            |                |             0 | No                 |                    |                    |                 |                   |                |                     0 | No                            |             0 |               |              0 |                |                             |                1 |                |                    | No         | 0-2-131     |                         |                             | conservative  |
(...)
```


