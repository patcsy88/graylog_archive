#!/bin/bash
i=0
z=1
archive=dns

until [ $i -gt $z ]
do
   echo "Removing archive $archive_$i"
   echo "Start operation..."
   #curl -s -u admin -H 'X-Requested-By: cli' -X GET http://127.0.0.1:9000/api/plugins/org.graylog.plugins.archive/archives | jq  '.archives_context' 
   curl -s -u admin:admin -H 'X-Requested-By: cli' -X DELETE http://127.0.0.1:9000/api/plugins/org.graylog.plugins.archive/archives/"$archive"_$i
   echo -n "done!"
   ((i=i+1))
done
