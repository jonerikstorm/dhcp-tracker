# dhcp-update
A script for OpenWRT to log if a new public IP is leased. Depends on bash for regex functions at this stage. Installation will hook into /etc/udhcpc.user and change /lib/netifd/dhcp.script to call /bin/bash

# TODO
1. Add support for a mailer
2. Eliminate dependence on bash
3. Luci?
