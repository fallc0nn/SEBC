* Other: Vert Datacenter VMware cluster (ESX 6.0)

`Other: Vert Datacenter VMware cluster (ESX 6.0)`

* List the nodes you are using by IP address and name

```
#HADOOP HOSTS
10.0.5.155  mas1.internal mas1	#MasterNode 01 : +MariaDB +NN +RM +HiveGW +ZK +JN +Oozie
10.0.5.156  mas2.internal mas2	#MasterNode 02 : +MariaDB +NN +RM +HiveGW +ZK +JN +Hive  +CM
10.0.5.157  util.internal util	#Edge/Util/Work: +Repos   +DN +NM +HiveGW +ZK +JN +Hue   +Kerberos
10.0.5.158  wks1.internal wks1	#WorkerNode 01 :          +DN +NM +HiveGW
10.0.5.159  wks2.internal wks2	#WorkerNode 02 :          +DN +NM +HiveGW
```

* List the Linux release you are using

```
[root@util ~]# cat /etc/centos-release
CentOS Linux release 7.3.1611 (Core) 
[root@util ~]# uname -a
Linux util.internal 3.10.0-514.el7.x86_64 #1 SMP Tue Nov 22 16:42:41 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux
```

* Demonstrate the disk capacity available on each node is >= 30 GB

```
[root@util ~]# lsblk
NAME        MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
fd0           2:0    1    4K  0 disk 
sda           8:0    0   40G  0 disk 
├─sda1        8:1    0    1G  0 part /boot
└─sda2        8:2    0   39G  0 part 
  ├─cl-root 253:0    0   35G  0 lvm  /
  └─cl-swap 253:1    0    4G  0 lvm  [SWAP]
sdb           8:16   0   40G  0 disk 
sr0          11:0    1  680M  0 rom 
```

* List the command and output for yum repolist enabled

```
[root@util ~]# yum repolist enabled
Loaded plugins: fastestmirror
base                                                                                                                           | 3.6 kB  00:00:00     
extras                                                                                                                         | 3.4 kB  00:00:00     
updates                                                                                                                        | 3.4 kB  00:00:00     
(1/4): base/7/x86_64/group_gz                                                                                                  | 155 kB  00:00:00     
(2/4): extras/7/x86_64/primary_db                                                                                              | 139 kB  00:00:00     
(3/4): base/7/x86_64/primary_db                                                                                                | 5.6 MB  00:00:03     
(4/4): updates/7/x86_64/primary_db                                                                                             | 4.7 MB  00:00:03     
Determining fastest mirrors
 * base: mirror.globo.com
 * extras: mirror.globo.com
 * updates: ftp.usf.edu
repo id                                                                repo name                                                                status
base/7/x86_64                                                          CentOS-7 - Base                                                          9,363
extras/7/x86_64                                                        CentOS-7 - Extras                                                          311
updates/7/x86_64                                                       CentOS-7 - Updates                                                       1,491
repolist: 11,165
```

* More detailed at issue: https://github.com/fallc0nn/SEBC/issues/15
