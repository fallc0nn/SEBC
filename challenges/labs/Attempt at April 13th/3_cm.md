* Add the following to `3_cm.md`:
* The command and output for `hdfs dfs -ls /user`

```
[root@util ~]# sudo -u hdfs hdfs dfs -ls /user
Found 6 items
drwxrwxrwx   - mapred hadoop              0 2017-04-13 11:55 /user/history
drwxrwxr-t   - hive   hive                0 2017-04-13 11:55 /user/hive
drwxrwxr-x   - hue    hue                 0 2017-04-13 11:56 /user/hue
drwxr-xr-x   - hdfs   supergroup          0 2017-04-13 12:02 /user/neymar
drwxrwxr-x   - oozie  oozie               0 2017-04-13 11:56 /user/oozie
drwxr-xr-x   - hdfs   supergroup          0 2017-04-13 12:02 /user/ronaldo
```

* The output from the CM API call `../api/v14/hosts`

```
[root@util ~]# curl -u admin:admin http://mas2.internal:7180/api/v14/hosts
{
  "items" : [ {
    "hostId" : "79f26d42-913a-4892-94db-8de1fb2be75e",
    "ipAddress" : "10.0.5.155",
    "hostname" : "mas1.internal",
    "rackId" : "/default",
    "hostUrl" : "http://mas2.internal:7180/cmf/hostRedirect/79f26d42-913a-4892-94db-8de1fb2be75e",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 16658751488
  }, {
    "hostId" : "9412b718-966f-4a37-8d47-6703819b01e9",
    "ipAddress" : "10.0.5.156",
    "hostname" : "mas2.internal",
    "rackId" : "/default",
    "hostUrl" : "http://mas2.internal:7180/cmf/hostRedirect/9412b718-966f-4a37-8d47-6703819b01e9",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 16658751488
  }, {
    "hostId" : "d3934ca2-4376-4483-abe9-af14bc6b530a",
    "ipAddress" : "10.0.5.157",
    "hostname" : "util.internal",
    "rackId" : "/default",
    "hostUrl" : "http://mas2.internal:7180/cmf/hostRedirect/d3934ca2-4376-4483-abe9-af14bc6b530a",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 16658751488
  }, {
    "hostId" : "4dcf5797-ea14-4892-994e-6177b8f99319",
    "ipAddress" : "10.0.5.158",
    "hostname" : "wks1.internal",
    "rackId" : "/default",
    "hostUrl" : "http://mas2.internal:7180/cmf/hostRedirect/4dcf5797-ea14-4892-994e-6177b8f99319",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 16658751488
  }, {
    "hostId" : "9abbd4be-9130-4c0c-856b-653a307fca7c",
    "ipAddress" : "10.0.5.159",
    "hostname" : "wks2.internal",
    "rackId" : "/default",
    "hostUrl" : "http://mas2.internal:7180/cmf/hostRedirect/9abbd4be-9130-4c0c-856b-653a307fca7c",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 16658751488
  } ]
}[root@util ~]# 
```
