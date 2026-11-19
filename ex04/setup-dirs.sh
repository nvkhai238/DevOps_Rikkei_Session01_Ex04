#!/bin/bash
# Ex04 - Application directory with least-privilege ownership
# Requires user/group quickbite (see ex03/initial-script.sh)
set -e

mkdir -p /opt/quickbite/user-service
chown -R quickbite:quickbite /opt/quickbite
chmod 750 /opt/quickbite

# 750 = rwx r-x ---
#   7 (owner quickbite): read + write + execute (enter dir)
#   5 (group quickbite): read + execute, no write
#   0 (others):          no access, so outsiders cannot read config/secrets
ls -la /opt
