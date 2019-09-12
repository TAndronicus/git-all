#!/bin/bash

echo Pulling repositories
bash pull.sh
echo Done pulling
echo Pushing repositories
bash push.sh
echo Done pushing
