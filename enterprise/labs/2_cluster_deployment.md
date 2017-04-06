* Browse or use curl on the endpoint ./api/v2/cm/deployment
* Code-format this output for readability

```
{
  "timestamp" : "2017-04-06T16:53:06.083Z",
  "clusters" : [ {
    "name" : "fallc0nn",
    "version" : "CDH5",
    "services" : [ {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "1073741824"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/dfs/dn,/data/dfs/dn"
          }, {
            "name" : "dfs_datanode_data_dir_perm",
            "value" : "700"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "4293706956"
          }, {
            "name" : "dfs_datanode_failed_volumes_tolerated",
            "value" : "1"
          }, {
            "name" : "dfs_datanode_http_port",
            "value" : "1006"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "4294967296"
          }, {
            "name" : "dfs_datanode_port",
            "value" : "1004"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "200"
          }, {
            "name" : "rm_io_weight",
            "value" : "100"
          } ]
        }, {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/dfs/nn,/data/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          }, {
            "name" : "namenode_java_heapsize",
            "value" : "1073741824"
          }, {
            "name" : "role_config_suppression_namenode_java_heapsize_minimum_validator",
            "value" : "true"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/dfs/snn"
          }, {
            "name" : "secondary_namenode_java_heapsize",
            "value" : "1073741824"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_block_size",
          "value" : "67108864"
        }, {
          "name" : "dfs_encrypt_data_transfer_algorithm",
          "value" : "AES/CTR/NoPadding"
        }, {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "UnINg7Zddti8iE0YB61jnMwjR2j8HT"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "QbGvyOWSjc91RWUPHONQIaWTJQyfLR"
        }, {
          "name" : "hadoop_secure_web_ui",
          "value" : "true"
        }, {
          "name" : "hadoop_security_authentication",
          "value" : "kerberos"
        }, {
          "name" : "hadoop_security_authorization",
          "value" : "true"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "E4H5VkDNaK1NnWTMpJX5XIL6SMPdpI"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "10"
        }, {
          "name" : "service_health_suppression_hdfs_canary_health",
          "value" : "true"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-DATANODE-13c24cc20af1e333d5556580ee953552",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "7769c3ac-ced9-44f7-b0e9-bf491be3a894"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "v4tk1ilyuljexa4y5sormxnn"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-3bf72878ecf7455fadab9d4fe347cbbf",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "fbc0bd74-e678-466a-bd7c-a09d4cef468c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3a59d8pcpjv3qhynl7gw5xpda"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-882bd4ee6e4a2ffc0be7eb072c80420d",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "162df1f0-a106-4dcf-8876-043ca21e032b"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "e8gml39x698mxgca0fooccl3l"
          } ]
        }
      }, {
        "name" : "hdfs-HTTPFS-db6417d5683f87690a5e5e39a59a6ba6",
        "type" : "HTTPFS",
        "hostRef" : {
          "hostId" : "9eaf0f32-81e1-43cd-a601-6418db5613fc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2150yp78yf6c35orwttm83e72"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-db6417d5683f87690a5e5e39a59a6ba6",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "9eaf0f32-81e1-43cd-a601-6418db5613fc"
        },
        "config" : {
          "items" : [ {
            "name" : "namenode_id",
            "value" : "43"
          }, {
            "name" : "role_jceks_password",
            "value" : "b3iytgry7ds0wikqq7sc4rvu5"
          } ]
        }
      }, {
        "name" : "hdfs-SECONDARYNAMENODE-db6417d5683f87690a5e5e39a59a6ba6",
        "type" : "SECONDARYNAMENODE",
        "hostRef" : {
          "hostId" : "9eaf0f32-81e1-43cd-a601-6418db5613fc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8jrvvthjhabjb40mh6m8b9to5"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "6"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "1"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "rm_cpu_shares",
            "value" : "1800"
          }, {
            "name" : "rm_io_weight",
            "value" : "900"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/yarn/nm,/data/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/yarn/container-logs,/data/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "3"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "4938"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "resource_manager_java_heapsize",
            "value" : "52428800"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "4938"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "3"
          } ]
        } ],
        "items" : [ {
          "name" : "hadoop_secure_web_ui",
          "value" : "true"
        }, {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "90"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "false"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "false"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "3exe6Jw6VIk7IUPRKBg6mg9ZmQxDqT"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-JOBHISTORY-3bf72878ecf7455fadab9d4fe347cbbf",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "fbc0bd74-e678-466a-bd7c-a09d4cef468c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5g0hm0unmn8yy41cykl1frral"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-13c24cc20af1e333d5556580ee953552",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "7769c3ac-ced9-44f7-b0e9-bf491be3a894"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "92f10gkjbtb829vwdzd458bk"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-3bf72878ecf7455fadab9d4fe347cbbf",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "fbc0bd74-e678-466a-bd7c-a09d4cef468c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "a3skptvzy90zt120gv1hlw3tx"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-882bd4ee6e4a2ffc0be7eb072c80420d",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "162df1f0-a106-4dcf-8876-043ca21e032b"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7dukemgcule0bsh5anu6l4iph"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-db6417d5683f87690a5e5e39a59a6ba6",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "9eaf0f32-81e1-43cd-a601-6418db5613fc"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "56"
          }, {
            "name" : "role_jceks_password",
            "value" : "9ribls7wcx7gqimrd5y4sc0aa"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "SERVER",
          "items" : [ {
            "name" : "zookeeper_server_java_heapsize",
            "value" : "52428800"
          } ]
        } ],
        "items" : [ {
          "name" : "enableSecurity",
          "value" : "true"
        }, {
          "name" : "service_config_suppression_server_count_validator",
          "value" : "true"
        }, {
          "name" : "service_health_suppression_zookeeper_canary_health",
          "value" : "true"
        } ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-3bf72878ecf7455fadab9d4fe347cbbf",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "fbc0bd74-e678-466a-bd7c-a09d4cef468c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5v39mmv22rrql1wdg8s3bz2k6"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "52428800"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "52428800"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "4"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "3214881587"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "541"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "ip-172-31-5-146.ec2.internal"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "hive_password"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-13c24cc20af1e333d5556580ee953552",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "7769c3ac-ced9-44f7-b0e9-bf491be3a894"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-3bf72878ecf7455fadab9d4fe347cbbf",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "fbc0bd74-e678-466a-bd7c-a09d4cef468c"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-882bd4ee6e4a2ffc0be7eb072c80420d",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "162df1f0-a106-4dcf-8876-043ca21e032b"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-db6417d5683f87690a5e5e39a59a6ba6",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "9eaf0f32-81e1-43cd-a601-6418db5613fc"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-3bf72878ecf7455fadab9d4fe347cbbf",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "fbc0bd74-e678-466a-bd7c-a09d4cef468c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ebxmvg712s4d2a8znadyze7si"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-3bf72878ecf7455fadab9d4fe347cbbf",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "fbc0bd74-e678-466a-bd7c-a09d4cef468c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "uibh61nuh2lg8k8p354j4vpf"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_database_host",
            "value" : "ip-172-31-5-146.ec2.internal"
          }, {
            "name" : "oozie_database_password",
            "value" : "oozie_password"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          }, {
            "name" : "oozie_java_heapsize",
            "value" : "52428800"
          } ]
        } ],
        "items" : [ {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-db6417d5683f87690a5e5e39a59a6ba6",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "9eaf0f32-81e1-43cd-a601-6418db5613fc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7yysbqmtv26svsjyhfeuo6gal"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HUE_LOAD_BALANCER",
          "items" : [ {
            "name" : "listen",
            "value" : "9889"
          } ]
        }, {
          "roleType" : "HUE_SERVER",
          "items" : [ {
            "name" : "hue_http_port",
            "value" : "9888"
          } ]
        } ],
        "items" : [ {
          "name" : "database_host",
          "value" : "ip-172-31-5-146.ec2.internal"
        }, {
          "name" : "database_password",
          "value" : "hue_password"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-HTTPFS-db6417d5683f87690a5e5e39a59a6ba6"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-db6417d5683f87690a5e5e39a59a6ba6",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "9eaf0f32-81e1-43cd-a601-6418db5613fc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "c20y5bb30tl2q9fcn6bfs8z1k"
          }, {
            "name" : "secret_key",
            "value" : "4QEF1XOz3y5QVGV5gpKGEkYiJYz53Z"
          } ]
        }
      }, {
        "name" : "hue-KT_RENEWER-db6417d5683f87690a5e5e39a59a6ba6",
        "type" : "KT_RENEWER",
        "hostRef" : {
          "hostId" : "9eaf0f32-81e1-43cd-a601-6418db5613fc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2elcez6febqzdq6116e59crvj"
          } ]
        }
      } ],
      "displayName" : "Hue"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "9eaf0f32-81e1-43cd-a601-6418db5613fc",
    "ipAddress" : "172.31.0.138",
    "hostname" : "ip-172-31-0-138.ec2.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ {
        "name" : "memory_overcommit_threshold",
        "value" : "0.95"
      } ]
    }
  }, {
    "hostId" : "7769c3ac-ced9-44f7-b0e9-bf491be3a894",
    "ipAddress" : "172.31.11.227",
    "hostname" : "ip-172-31-11-227.ec2.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "162df1f0-a106-4dcf-8876-043ca21e032b",
    "ipAddress" : "172.31.11.244",
    "hostname" : "ip-172-31-11-244.ec2.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "fbc0bd74-e678-466a-bd7c-a09d4cef468c",
    "ipAddress" : "172.31.5.146",
    "hostname" : "ip-172-31-5-146.ec2.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ {
        "name" : "memory_overcommit_threshold",
        "value" : "0.95"
      } ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-db6417d5683f87690a5e5e39a59a6ba6",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "24268657b9b399d66dd8cc2fcccf3fa4dbf17ea5e8c8586eb1b94e330a7e4100",
    "pwSalt" : -7333903690859510245,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-db6417d5683f87690a5e5e39a59a6ba6",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "1cea6c604f93859f3279031d92d1af8bf215175befd20317c58f806ebc458e29",
    "pwSalt" : 931821242919706548,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-db6417d5683f87690a5e5e39a59a6ba6",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "85f507a5c09c7239f635b542ad90d410e6748b96fca1557c5274291ed623e584",
    "pwSalt" : 4342498019540521172,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-db6417d5683f87690a5e5e39a59a6ba6",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "d67216c09aef6cbbe84acedcd04d138dee7551c4f434b92f4fbeb7a15de0dd8f",
    "pwSalt" : 6098818864218717887,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "9904d0d481ce2bc440ad3b42c3162dccdbe18898e1b565b831d48cd2b2601398",
    "pwSalt" : 7249828012956780819,
    "pwLogin" : true
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "54fbe1270e69b233fa5b6af92b05044447765a0f6a2023e4b582ad36a44660e0",
    "pwSalt" : -1715676972365120497,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.10.1",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20170319-2001",
    "gitHash" : "f226435f6fa5f545543c00245900ae43bea7a29c",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "EVENTSERVER",
        "items" : [ {
          "name" : "role_health_suppression_event_server_scm_health",
          "value" : "true"
        } ]
      }, {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "ip-172-31-5-146.ec2.internal"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "rman_password"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        }, {
          "name" : "role_health_suppression_reports_manager_scm_health",
          "value" : "true"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ALERTPUBLISHER-db6417d5683f87690a5e5e39a59a6ba6",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "9eaf0f32-81e1-43cd-a601-6418db5613fc"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "b4zyuy3d660smx3s1a4bvhp6w"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-db6417d5683f87690a5e5e39a59a6ba6",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "9eaf0f32-81e1-43cd-a601-6418db5613fc"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "c7h0k2jd8d45gnskbf31mbzfz"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-db6417d5683f87690a5e5e39a59a6ba6",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "9eaf0f32-81e1-43cd-a601-6418db5613fc"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "8qfili10x39wac47wye3j1rer"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-db6417d5683f87690a5e5e39a59a6ba6",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "9eaf0f32-81e1-43cd-a601-6418db5613fc"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "91821u75pn7gwdjxztyp3lkqp"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-db6417d5683f87690a5e5e39a59a6ba6",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "9eaf0f32-81e1-43cd-a601-6418db5613fc"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "f2nk4ccv4kurhhcmdgatdf1fu"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "AD_USE_SIMPLE_AUTH",
      "value" : "false"
    }, {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/25/2012 4:30"
    }, {
      "name" : "KDC_ADMIN_PASSWORD",
      "value" : "BQIAAABAAAIABkxULkNPTQAMY2xvdWRlcmEtc2NtAAVhZG1pbgAAAAFY5cYoAQAXABDmz88bwPCSO5ZWkrBRf9dkAAAAAQ=="
    }, {
      "name" : "KDC_ADMIN_USER",
      "value" : "cloudera-scm/admin@LT.COM"
    }, {
      "name" : "KDC_HOST",
      "value" : "ip-172-31-5-146.ec2.internal"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    }, {
      "name" : "SECURITY_REALM",
      "value" : "LT.COM"
    } ]
  }
}
```
