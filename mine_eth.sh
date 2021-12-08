#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=eth-na.f2pool.com:6688 
WALLET=zcc0511.001

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
done
