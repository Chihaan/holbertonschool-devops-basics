#!/usr/bin/env bash

ip -4 address show scope host | grep "inet" | head -n 1 | cut -d ' ' -f6 | cut -d '/' -f1 | xargs ping -c 4
