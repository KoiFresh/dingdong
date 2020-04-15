#!/bin/bash

sudo modprobe bcm2835-v4l2

cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
./mate
