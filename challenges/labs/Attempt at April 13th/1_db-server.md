* The hostname of your db server node

```
[root@mas1 ~]# hostname -f
mas1.internal
```

* The command and output for display your database server's version

```
[root@mas1 ~]# mysql -e "select @@version;"
+-----------------+
| @@version       |
+-----------------+
| 10.1.22-MariaDB |
+-----------------+
```

* The command and output for listing your created databases

```
[root@mas1 ~]# mysql -e "show databases;"
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
```
