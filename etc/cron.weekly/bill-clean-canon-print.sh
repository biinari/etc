#!/bin/bash

# Bill

# Canon printer leaves tmp files around forever.
# Multiple issues raised by others and nothing changes.

# Remove old tmp files
find /var/tmp -name 'cnij*tmp*' -type f -ctime +7 -delete
