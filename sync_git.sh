#!/bin/bash

git add screenshots
git add files
git add Robot_Framework_testing
git add interfaces.config
git add diffconfig_x86
git add sync_git.sh
git add Proof_of_Delivery.pdf
git add README.md
git add new_pid
git commit -m "OpenWrt test project"
git push https://tnemet:key@github.com/tnemet/test_task.git master
