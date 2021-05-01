#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=etc.f2pool.com:8118 
WALLET=0x1458cd8a3eff6c672cec7c72feb977ebc71ec7be.lolMinerWorker

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETCHASH --pool $POOL --user $WALLET $@
