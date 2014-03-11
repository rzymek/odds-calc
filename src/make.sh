#!/bin/bash
set -e
cd `dirname $0`
awk -f merge.awk < src.html > ../index.html
echo Done
