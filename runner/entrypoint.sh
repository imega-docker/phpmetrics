#!/usr/bin/env bash

curl -k -sLS https://github.com/phpmetrics/PhpMetrics/releases/download/v2.0.0-rc/phpmetrics.phar -o $ROOTFS/usr/bin/phpmetrics
chmod +x $ROOTFS/usr/bin/phpmetrics

cd $ROOTFS/usr/bin/
ln -s php7 php
