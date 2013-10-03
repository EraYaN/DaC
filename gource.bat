@echo off
title Gource DaC
"../gource/gource.exe" --fullscreen -1920x1080 --stop-at-end --file-idle-time 6000 --multi-sampling --key --max-files 0 --seconds-per-day 6
pause