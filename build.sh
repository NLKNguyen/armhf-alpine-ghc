#!/usr/bin/qemu-arm-static /bin/sh 
echo https://mitchty.net/ghc/8.0.1 >> /etc/apk/repositories

qemu-arm-static /bin/cat /etc/apk/repositories
qemu-arm-static /sbin/apk update
qemu-arm-static /sbin/apk add --no-cache ghc cabal stack
