### Modified script

```
#!/bin/bash

MR=/opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce
HADOOP=`dirname $(which hadoop)`
CONTAINER_MAPS=8
CONTAINER_REDS=1
DATA_GB=10GB
OUTPUT_DIR=/user/fallc0nn

for CONTAINER_MEM in 512 1024; do
  MAP_MB=`echo "($CONTAINER_MEM*0.8)/1" | bc` 
  RED_MB=`echo "($CONTAINER_MEM*0.8)/1" | bc` 

  # Mark start of the loop
  echo "----------"
  echo "Testing loop started on `date`"
  echo "Data Size:               $DATA_GB"
  echo "Container Memory:        $CONTAINER_MEM"
  echo "Container Mappers:       $CONTAINER_MAPS"
  echo "Container Reducers:      $CONTAINER_REDS"
  echo "Mapper's JVM Heap Mem:   $MAP_MB"
  echo "Reducers's JVM Heap Mem: $RED_MB"

  time ${HADOOP}/hadoop jar ${MR}/hadoop-examples.jar teragen \
    -Dmapreduce.job.maps=$CONTAINER_MAPS \
    -Dmapreduce.map.memory.mb=$CONTAINER_MEM \
    -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
      $(echo "$(echo $DATA_GB |cut -dG -f1)*1024*1024/100" |bc) \
      $OUTPUT_DIR/tg-$DATA_GB-${CONTAINER_MAPS}-${CONTAINER_REDS}-${CONTAINER_MEM} \
      1>tera_${CONTAINER_MAPS}_${CONTAINER_REDS}_${CONTAINER_MEM}.out \
      2>tera_${CONTAINER_MAPS}_${CONTAINER_REDS}_${CONTAINER_MEM}.err

  time ${HADOOP}/hadoop jar $MR/hadoop-examples.jar terasort \
    -Dmapreduce.job.maps=$CONTAINER_MAPS \
    -Dmapreduce.job.reduces=$CONTAINER_REDS \
    -Dmapreduce.map.memory.mb=$CONTAINER_MEM \
    -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
    -Dmapreduce.reduce.memory.mb=$CONTAINER_MEM \
    -Dmapreduce.reduce.java.opts.max.heap=$RED_MB \
      $OUTPUT_DIR/tg-$DATA_GB-${CONTAINER_MAPS}-${CONTAINER_REDS}-${CONTAINER_MEM} \
      $OUTPUT_DIR/ts-$DATA_GB-${CONTAINER_MAPS}-${CONTAINER_REDS}-${CONTAINER_MEM} \
      1>>tera_${CONTAINER_MAPS}_${CONTAINER_REDS}_${CONTAINER_MEM}.out \
      2>>tera_${CONTAINER_MAPS}_${CONTAINER_REDS}_${CONTAINER_MEM}.err                         

  $HADOOP/hadoop fs -rm -r -skipTrash $OUTPUT_DIR/tg-$DATA_GB-${CONTAINER_MAPS}-${CONTAINER_REDS}-${CONTAINER_MEM}                         
  $HADOOP/hadoop fs -rm -r -skipTrash $OUTPUT_DIR/ts-$DATA_GB-${CONTAINER_MAPS}-${CONTAINER_REDS}-${CONTAINER_MEM}                 

  echo Testing loop ended on `date`
  echo "----------"
done
```
