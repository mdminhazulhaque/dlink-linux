#!/bin/bash

killall pppd
sleep 5 && /usr/sbin/pppd debug call linux_dial

