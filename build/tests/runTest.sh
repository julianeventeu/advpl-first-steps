#!/bin/bash
echo "run..."
echo $1
/usr/local/FastCompile --compileID=ZZZZ-ZZZZ --passwordEmpty --build=170117A --server=localhost --enviroment=ENVIRONMENT --port=1234 --testcase=$1