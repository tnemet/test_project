#!/bin/sh

uci set network.lan.ipaddr='192.168.8.11'
uci commit network

exit 0
