#!/bin/sh

eval 'ssh-agent -s'
# https://ifireball.wordpress.com/2015/01/12/automatic-loading-of-ssh-keys-from-scripts/
#echo ${SSH_PASSWORD} > passfile.sh
#chmod a+x passfile.sh
#export DISPLAY=1
#echo $MY_SSH_PASS | SSH_ASKPASS=./passfile.sh ssh-add /workspace/ssh_key
#rm passfile.sh