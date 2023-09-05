#!/bin/sh
wget -O /tmp/wonkey.tgz https://github.com/wonkey-coders/wonkey/releases/download/v2022.04/wonkey_2022.04_linux_x64.tgz
tar -C /usr/local -xzf /tmp/wonkey.tgz
rm /tmp/wonkey.tgz
mv /usr/local/wonkey_linux_* /usr/local/wonkey
