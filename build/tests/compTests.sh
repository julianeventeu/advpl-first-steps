#!/bin/bash

set -e
until echo -n > /dev/tcp/localhost/$APPSERVER_TCP_PORT
do
    echo "Wating for service on port $APPSERVER_TCP_PORT"
    sleep 0.5
done 2> /dev/null

/usr/local/FastCompile --compileID=ZZZZ-ZZZZ --passwordEmpty --build=170117A --server=localhost --enviroment=ENVIRONMENT --port=1234 --compileFolder=/tests/ --include='/includes/include/;/includes/include-lib/'
retVal=$?

exit $retVal