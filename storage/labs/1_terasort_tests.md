## Teragen+Terasort Lab

```
# cd /opt/cloudera/parcels/CDH/jars
# hadoop jar hadoop-examples.jar teragen -D dfs.block.size=33554432 100000000 /user/fallc0nn/terasort-input
```

[Teragen output](https://cloud.githubusercontent.com/assets/5271831/24675785/d30a49f8-1956-11e7-8374-7d6acc6dfde5.png)

```
# hadoop jar hadoop-examples.jar terasort /user/fallc0nn/terasort-input /user/fallc0nn/terasort-output
```

[Teragen output](https://cloud.githubusercontent.com/assets/5271831/24675845/fe148730-1956-11e7-8724-43d7c7f1bde1.png)
