#!/usr/bin/env bash

if [[ `vagrant global-status --prune | grep "devops|\devops02" | grep running | wc -l` -lt 1 ]]; then
    cat <<END
    ################################################################################
    A vcp_builder is not running yet. This may take a few minutes to
    bring up if it has not been created yet.
    ################################################################################
    ...
END

    cd vagrant/machines/builder
    vagrant up
fi

cat <<END
################################################################################
Attempting to log into the machine now.
NOTE(s):
your host machine.
- postres permissions have been setup to allow remote connections into this
devops (192.168.56.200) from 192.168.56.0/24 and devops02 (192.168.56.201)
################################################################################
...
END
#cd vagrant/machines/builder
vagrant ssh
# For two vms
#vagrant ssh devops
#vagrant suspend
