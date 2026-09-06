#!/bin/bash
set -euo pipefail

# Europe/Brussels timezone
ln -sf /usr/share/zoneinfo/Europe/Brussels /etc/localtime

# sudoers must be 0440 root-owned or sudo refuses it entirely
chown root:root /etc/sudoers.d/core
chmod 0440 /etc/sudoers.d/core

# sshd drop-in readable
chmod 0600 /etc/ssh/sshd_config.d/20-hardening.conf
