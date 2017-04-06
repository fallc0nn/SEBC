Explain any adjustments you make in resources/labs/0_YARNCalcs.md

```
8GB RAM is more than enough for OS non-cloudera-hadoop-ecosystem-services, leaving more than 90% for our cluster without impacting OS.
So the cell formula for OS memory have been changed to "=PRODUCT(0.0625,B3)" to make it exactly 8GB.
```

What criteria affects workload factor? What does a value of 1, 2, or 4 signify?
```
The workload factor (B4) is the max number of map and reduce jobs to run in a given node.
1 = 1 map and 1 reduce.
2 = 2 maps and 2 reduces.
4 = 4 maps and 4 reduces.

The thing is, since YARN have 14 vcores total, if you increase to 2 or 4 you will get the same results.
```
