#!/nix/store/jjbwf3wfnj3mnqqjlckjya707p06c7av-system-path/bin/bash

echo "Enabling swap..."
. ./1_swap/swap.sh

echo "Enabling tmpfs..."
. ./2_tmpfs/tmpfs.sh

echo "Configuring users..."
. ./3_users/users.sh
