#!/bin/sh

set -e
set -x

PROJECT_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
cd "$PROJECT_DIR"
pwd

rm -rf build/

mkdir build/Unicorn/Unicorn -p
cp -ar $(egrep -v '^#|^$' Unicorn.txt.release) build/Unicorn/
cp -ar Unicorn.txt.release build/Unicorn/Unicorn.txt
cp -ar *.md MIT-LICENSE build/Unicorn/
