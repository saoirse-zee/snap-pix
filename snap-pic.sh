#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H%M%S")

fswebcam -r 720x720 --no-banner ./snaps/$DATE.jpg
