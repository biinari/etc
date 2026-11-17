#!/bin/bash

# Bill

# Snap is a piece of shit and doesn't clean up after itself.

# Remove old (disabled) revisions of snaps
while read -r snap_name revision ; do
  sudo snap remove "${snap_name}" --revision="${revision}"
done < <(snap list --all | awk '/disabled(,\w+)?$/{print $1, $3}')

# Remove old cache files
find /var/lib/snapd/cache -type f -mtime +30 -delete
