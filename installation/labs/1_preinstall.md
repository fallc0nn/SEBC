## Pre-install
1.  
```
# echo "vm.swappiness = 1" >> /etc/sysctl.conf

# sysctl -p
vm.swappiness = 1
net.ipv6.conf.all.disable_ipv6 = 1
fs.file-max = 654401
```

2.
```
# cat /etc/fstab

# /etc/fstab
# Created by anaconda on Thu Oct 20 12:47:25 2016
#
# Accessible filesystems, by reference, are maintained under '/dev/disk'
# See man pages fstab(5), findfs(8), mount(8) and/or blkid(8) for more info
#
UUID=3ed41454-00c8-4803-bf61-2ee88aa54dbf / xfs defaults 0 0
/dev/xvdb1 /hadoopdisks/disk0 xfs defaults,noatime 0 0

# mount |tail -1
/dev/xvdb1 on /hadoopdisks/disk0 type xfs (rw,noatime,attr2,inode64,noquota)
```

3.
```
XFS :)
```

4.
```
# echo "echo 'never' > /sys/kernel/mm/transparent_hugepage/defrag" >> /etc/rc.local
# chmod +x /etc/rc.local
# reboot
# cat /sys/kernel/mm/transparent_hugepage/defrag
always madvise [never]
# cat /sys/kernel/mm/transparent_hugepage/enabled
always madvise [never]
```

5.
```
# cat /etc/sysconfig/network-scripts/ifcfg-eth0
DEVICE="eth0"
BOOTPROTO="dhcp"
ONBOOT="yes"
TYPE="Ethernet"
USERCTL="yes"
PEERDNS="yes"
IPV6INIT="no"
```

6.
```
# getent hosts
127.0.0.1       localhost localhost.localdomain localhost4 localhost4.localdomain4
127.0.0.1       localhost localhost.localdomain localhost6 localhost6.localdomain6
172.31.12.155   hadoop00.ec2.internal hadoop00
172.31.9.85     hadoop01.ec2.internal hadoop01
172.31.0.66     hadoop02.ec2.internal hadoop02
172.31.9.195    hadoop03.ec2.internal hadoop03
172.31.14.169   hadoop04.ec2.internal hadoop04
```

7.
```
# systemctl status nscd
● nscd.service - Name Service Cache Daemon
   Loaded: loaded (/usr/lib/systemd/system/nscd.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-04-03 15:07:42 EDT; 7s ago
  Process: 2291 ExecStart=/usr/sbin/nscd $NSCD_OPTIONS (code=exited, status=0/SUCCESS)
 Main PID: 2292 (nscd)
   CGroup: /system.slice/nscd.service
           └─2292 /usr/sbin/nscd
```

8.
```
systemctl status chronyd
● chronyd.service - NTP client/server
   Loaded: loaded (/usr/lib/systemd/system/chronyd.service; enabled; vendor preset: enabled)
   Active: active (running) since Mon 2017-04-03 14:34:47 EDT; 35min ago
 Main PID: 458 (chronyd)
   CGroup: /system.slice/chronyd.service
           └─458 /usr/sbin/chronyd
```
