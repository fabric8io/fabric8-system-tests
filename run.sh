#!/bin/bash
set +e

git clone https://github.com/fabric8io/fabric8-forge.git
cd fabric8-forge
./systest.sh
if [ $? -ne 0 ]; then
  echo 'SYSTEM TESTS FAILED'
else 
  echo 'SYSTEM TESTS PASSED'
fi
