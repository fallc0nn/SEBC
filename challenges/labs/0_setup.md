* Amazon AWS
* 5 nodes m3x.large 2x40 EBS disks

First Machine: `Util/Edge Node + DB + Kerberos`
External name: `ec2-54-164-13-128.compute-1.amazonaws.com`
External IP: `54.164.13.128`
Internal name: `ip-172-31-14-251.ec2.internal`
Internal IP: `172.31.14.251`
OS: `RHEL-7.3_HVM_GA-20161026-x86_64-1-Hourly2-GP2 (ami-b63769a1)`
Disks: 
```
[root@ip-172-31-14-251 ~]# lsblk
NAME    MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
xvda    202:0    0  40G  0 disk 
├─xvda1 202:1    0   1M  0 part 
└─xvda2 202:2    0  40G  0 part /
xvdb    202:16   0  40G  0 disk /data/disk1
```

Repolist:
```
[root@ip-172-31-6-207 ec2-user]# yum repolist enabled
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
rhui-REGION-client-config-server-7                                                                                                      | 2.9 kB  00:00:00     
rhui-REGION-rhel-server-releases                                                                                                        | 3.5 kB  00:00:00     
rhui-REGION-rhel-server-rh-common                                                                                                       | 3.8 kB  00:00:00     
(1/7): rhui-REGION-client-config-server-7/x86_64/primary_db                                                                             | 5.5 kB  00:00:00     
(2/7): rhui-REGION-rhel-server-releases/7Server/x86_64/group                                                                            | 701 kB  00:00:00     
(3/7): rhui-REGION-rhel-server-rh-common/7Server/x86_64/group                                                                           |  104 B  00:00:00     
(4/7): rhui-REGION-rhel-server-rh-common/7Server/x86_64/updateinfo                                                                      |  32 kB  00:00:00     
(5/7): rhui-REGION-rhel-server-releases/7Server/x86_64/updateinfo                                                                       | 1.8 MB  00:00:00     
(6/7): rhui-REGION-rhel-server-rh-common/7Server/x86_64/primary_db                                                                      | 117 kB  00:00:00     
(7/7): rhui-REGION-rhel-server-releases/7Server/x86_64/primary_db                                                                       |  34 MB  00:00:00     
repo id                                                              repo name                                                                           status
rhui-REGION-client-config-server-7/x86_64                            Red Hat Update Infrastructure 2.0 Client Configuration Server 7                          6
rhui-REGION-rhel-server-releases/7Server/x86_64                      Red Hat Enterprise Linux Server 7 (RPMs)                                            14,050
rhui-REGION-rhel-server-rh-common/7Server/x86_64                     Red Hat Enterprise Linux Server 7 RH Common (RPMs)                                     225
repolist: 14,281
```

Other machines:

* UtilEdge: `ip-172-31-14-251.ec2.internal`   54.164.13.128
* Manager1: `ip-172-31-6-207.ec2.internal`    54.165.239.2
* Manager2: `ip-172-31-0-109.ec2.internal`    52.90.232.50
* Worker1:  `ip-172-31-0-73.ec2.internal`     54.89.170.56
* Worker2:  `ip-172-31-3-249.ec2.internal`    54.87.141.95

```
[root@ip-172-31-14-251 ~]# for host in ip-172-31-14-251.ec2.internal ip-172-31-6-207.ec2.internal \
> ip-172-31-0-109.ec2.internal ip-172-31-0-73.ec2.internal ip-172-31-3-249.ec2.internal; do \
> ssh -i /root/fallc0nn.pem ec2-user@$host "sudo useradd -u 2010 neymar"
> done

[root@ip-172-31-14-251 ~]# for host in ip-172-31-14-251.ec2.internal ip-172-31-6-207.ec2.internal \
> ip-172-31-0-109.ec2.internal ip-172-31-0-73.ec2.internal ip-172-31-3-249.ec2.internal; do
> ssh -i /root/fallc0nn.pem ec2-user@$host "sudo useradd -u 2016 ronaldo"
> done

[root@ip-172-31-14-251 ~]# for host in ip-172-31-14-251.ec2.internal ip-172-31-6-207.ec2.internal ip-172-31-0-109.ec2.internal ip-172-31-0-73.ec2.internal ip-172-31-3-249.ec2.internal; do ssh -i /root/fallc0nn.pem ec2-user@$host "sudo groupadd barca"; done
[root@ip-172-31-14-251 ~]# for host in ip-172-31-14-251.ec2.internal ip-172-31-6-207.ec2.internal ip-172-31-0-109.ec2.internal ip-172-31-0-73.ec2.internal ip-172-31-3-249.ec2.internal; do ssh -i /root/fallc0nn.pem ec2-user@$host "sudo groupadd merengues"; done
[root@ip-172-31-14-251 ~]# for host in ip-172-31-14-251.ec2.internal ip-172-31-6-207.ec2.internal ip-172-31-0-109.ec2.internal ip-172-31-0-73.ec2.internal ip-172-31-3-249.ec2.internal; do ssh -i /root/fallc0nn.pem ec2-user@$host "sudo usermod -Gbarca ronaldo"; done
[root@ip-172-31-14-251 ~]# for host in ip-172-31-14-251.ec2.internal ip-172-31-6-207.ec2.internal ip-172-31-0-109.ec2.internal ip-172-31-0-73.ec2.internal ip-172-31-3-249.ec2.internal; do ssh -i /root/fallc0nn.pem ec2-user@$host "sudo usermod -Gmerengues neymar"; done

[root@ip-172-31-14-251 ~]# cat /etc/passwd |grep "neymar\|ronaldo"
neymar:x:2010:2010::/home/neymar:/bin/bash
ronaldo:x:2016:2016::/home/ronaldo:/bin/bash

[root@ip-172-31-14-251 ~]# cat /etc/group |grep "merengues\|barca"
barca:x:2017:ronaldo
merengues:x:2018:neymar
```
