What is ubertask optimization?
* Ubertask allows grouping of some tasks on a single JVM

Where in CM is the Kerberos Security Realm value displayed?
* It's in: Administration -> Settings -> Kerberos

Which CDH service(s) host a property for enabling Kerberos authentication?
* Cloudera Manager creates (at least) a principal entry for each service (including himself)

How do you upgrade the CM agents?
* Manual upgrade for CM-server host. For all the other machines, you can go through CM GUI or manually too.

Give the tsquery statement used to chart Hue's CPU utilization?
```
select (cpu_system_rate + cpu_user_rate) where serviceName=hue
```

Name all the roles that make up the Hive service
* Hive Metastore Server, HiveServer2 and Hive Gateway

What steps must be completed before integrating Cloudera Manager with Kerberos?
* Configure the realm to support renewable tickets
* Install the JCE policy file if you're going to using AES-256 encryption.
* Packages `krb5-workstation krb5-libs` installed on every host
* replicate `/etc/krb5.conf` on every host
* Create admin user principal for Cloudera Manager
* Run Kerberos Wizard through CM.
