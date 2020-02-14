#!/usr/bin/env  bash

EDITOR=vi


#####################################################3
#####   
##      cleanup and env setup
#

curl -O https://raw.githubusercontent.com/paxtonhare/demo-magic/master/demo-magic.sh
chmod +x demo-magic.sh
yum -y install epel-release
yum -y install pv

rpm -e bash-completion
rm -rf /etc/systemd/system/sshd.service.d
systemctl daemon-reload

. demo-magic.sh
clear




#####################################################3
#####   
##      basic service unit file
#

pe 'systemctl show'
pe 'systemctl show | wc -l'
pe 'systemctl show confluent-server'
pe 'systemctl show -p User confluent-server'

pe 'systemctl cat sshd'
pe 'systemctl status sshd'
pe 'systemctl edit sshd'
pe 'systemctl status sshd'
wait
clear




#####################################################3
#####   
##      unit file locations
#

pe 'systemd-delta'
wait
clear




#####################################################3
#####   
##      unit file locations
#

pe 'yum -y install bash-completion'
cmd
wait
clear




#####################################################3
#####   
##      system status
#

pe 'systemctl status'
pe 'systemctl --failed'
wait
clear




#####################################################3
#####   
##      ad hoc jobs
#

pe 'systemd-run --wait curl https://confluent.io'
pe 'systemd-run curl https://confluent.io'
cmd
pe 'systemd-run -p User=cp-kafka' --wait curl https://confluent.io'
wait
clear




#####################################################3
#####   
##      timers
#

pe 'systemctl car sleepy.service'
pe 'systemctl cat sleepy.timer'
pe 'systemctl list-jobs'
wait
clear




