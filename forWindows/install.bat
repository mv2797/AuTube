@echo off
cls
setlocal EnableDelayedExpansion

title firstTimeInstall

color 0a


echo.                                                                  
echo                        #  #    #   ####   #####    ##    #       #       ######  #####  
echo                        #  ##   #  #         #     #  #   #       #       #       #    # 
echo                        #  # #  #   ####     #    #    #  #       #       #####   #    # 
echo                        #  #  # #       #    #    ######  #       #       #       #####  
echo                        #  #   ##  #    #    #    #    #  #       #       #       #   #  
echo                        #  #    #   ####     #    #    #  ######  ######  ######  #    # 
echo.
echo                                                   by MV                                                                   
                                                                   
                                                                   


:: Download
if exist python-3.8.4-amd64.exe echo "File Exists... Proceeding"

if not exist python-3.8.4-amd64.exe wget.exe https://www.python.org/ftp/python/3.8.4/python-3.8.4-amd64.exe


::Install
python-3.8.4-amd64.exe



echo installation successful
echo now run install_sub.bat

pause
