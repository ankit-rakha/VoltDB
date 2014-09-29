#!/bin/bash
/opt/voltdb/bin/voltdb compile schema.sql;
scp catalog.jar deployment.xml root@nsql02:~/VOLTDB/
scp catalog.jar deployment.xml root@nsql03:~/VOLTDB/
/opt/voltdb/bin/voltdb create catalog.jar -d deployment.xml -H nsql01 -l /root/VOLTDB/LICENSES/license.xml;