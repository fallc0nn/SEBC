Validated with fallc0nn user:

```
[fallc0nn@ip-172-31-5-146 ~]$ klist
klist: No credentials cache found (filename: /tmp/krb5cc_1001)
[fallc0nn@ip-172-31-5-146 ~]$ kinit fallc0nn
Password for fallc0nn@LT.COM: 
[fallc0nn@ip-172-31-5-146 ~]$ klist
Ticket cache: FILE:/tmp/krb5cc_1001
Default principal: fallc0nn@LT.COM

Valid starting       Expires              Service principal
04/06/2017 12:14:19  04/06/2017 22:14:19  krbtgt/LT.COM@LT.COM
        renew until 04/07/2017 12:14:17

```
