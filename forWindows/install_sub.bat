@echo off
cls
setlocal EnableDelayedExpansion

title firstTimeInstall

color 0a


::get pip
if exist get-pip.py echo "File Exists... Proceeding"

if not exist get-pip.py wget.exe https://bootstrap.pypa.io/get-pip.py
python get-pip.py

::Install pip
pip install youtube-dl

echo installation successful
echo quitting....
echo bye.

pause
