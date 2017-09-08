#!/bin/sh

set -e

# only perform autoreconf on the parts that are used for the build
for DIR in . libdnet-stripped nbase ncat nmap-update nping nsock/src ; do
    autoreconf -fi --no-recursive "$DIR"
done

