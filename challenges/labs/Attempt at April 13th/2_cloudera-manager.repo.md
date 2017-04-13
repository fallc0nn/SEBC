* Local repo in `util.internal` - see https://github.com/fallc0nn/SEBC/issues/17

```
[root@mas2 ~]# cat /etc/yum.repos.d/cloudera-manager.repo 
[cloudera-manager]
name=Cloudera Manager, Version 5.10.1
baseurl=http://util.internal/cm5/redhat/7/x86_64/cm/5.10.1/
gpgkey =http://util.internal/RPM-GPG-KEY-cloudera
gpgcheck = 1
```
