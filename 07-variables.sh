#!/bin/bash

#### special variables #### 
echo "All arguments passed to script : $@"
echo "No. of variables passed to script : $#"
echo "script name : $0"
echo "present working directory : $PWD"
echo "who is running the script : $USER"
echo "home directory of current user : $HOME"
echo "PID of the script : $$"
sleep 100 &
echo "PID of recently executed background process : $!"
echo "All arguments passed to script : $*"
