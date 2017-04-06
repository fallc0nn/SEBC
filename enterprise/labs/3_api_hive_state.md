* Stop Hive Service:
```
❯ curl -X POST -u "admin:cloudera" "http://52.200.147.103:7180/api/v2/clusters/fallc0nn/services/hive/commands/stop"
{
  "id" : 595,
  "name" : "Stop",
  "startTime" : "2017-04-06T17:01:57.577Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```

* Start Hive Service:
```
❯ curl -X POST -u "admin:cloudera" "http://52.200.147.103:7180/api/v2/clusters/fallc0nn/services/hive/commands/start"
{
  "id" : 601,
  "name" : "Start",
  "startTime" : "2017-04-06T17:02:59.056Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```

* Check Hive Service:
```
❯ curl -X GET -u "admin:cloudera" "http://52.200.147.103:7180/api/v2/clusters/fallc0nn/services/hive"
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://ip-172-31-5-146.ec2.internal:7180/cmf/serviceRedirect/hive",
  "serviceState" : "STARTED",
  "healthSummary" : "GOOD",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "GOOD"
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "GOOD"
  } ],
  "configStale" : false,
  "maintenanceMode" : false,
  "maintenanceOwners" : [ ],
  "displayName" : "Hive"
}
```
