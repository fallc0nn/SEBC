Commands (a one-liner "error" is expected)

```
[root@ip-172-31-0-138 ec2-user]# export HUE_CONF_DIR=/var/run/cloudera-scm-agent/process/`ls -1 /var/run/cloudera-scm-agent/process | grep HUE | sort -n | tail -1`
[root@ip-172-31-0-138 ec2-user]# HUE_IGNORE_PASSWORD_SCRIPT_ERRORS=1 HUE_DATABASE_PASSWORD=hue_password /opt/cloudera/parcels/CDH/lib/hue/build/env/bin/hue useradmin_sync_with_unix
```

Login to the Hue with your unix user (screenshot with the same name of this file attached).
