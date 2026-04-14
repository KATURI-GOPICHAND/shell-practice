#!/bin/bash

set -e

trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR

echo "hello world"
echo "iamlearning shell"
echoo "printing error here"
echo "no error in this"