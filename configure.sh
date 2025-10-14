#!/bin/bash

echo "Enabling swap..."
. ./1_swap/swap.sh

echo "Enabling tmpfs..."
. ./2_tmpfs/tmpfs.sh

echo "Configuring users..."
. ./3_users/users.sh
