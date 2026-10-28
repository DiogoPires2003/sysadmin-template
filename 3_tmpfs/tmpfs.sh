#!/bin/bash

sudo mkdir -p /mnt/mytmpfs
sudo mount -t tmpfs -o size=1G tmpfs /mnt/mytmpfs
