#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=beam.f2pool.com:5000
WALLET=18b98f4521b052c7d8b2a8efde334ada393b397dc7a6b06830b2b256dafd6d6ab72.testRun

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --coin BEAM --pool $POOL --user $WALLET $@
