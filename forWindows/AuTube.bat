@echo off
cls
setlocal EnableDelayedExpansion


title YouTubeDownloader



color 0e

echo.
echo.                                          #             #######                         
echo.                                         # #    #    #     #     #    #  #####   ###### 
echo.                                        #   #   #    #     #     #    #  #    #  #      
echo.                                       #     #  #    #     #     #    #  #####   #####  
echo.                                       #######  #    #     #     #    #  #    #  #      
echo                                        #     #  #    #     #     #    #  #    #  #      
echo.                                       #     #   ####      #      ####   #####   ###### 
echo.                                                  
echo                                                             by MV
echo                                                    (Auto YouTube Downloader)                               

echo.
echo. 
echo                                              (Tip: Try Updating if you face errors)                                                                     
                                                                                     
                                                                                     


:top
echo                                                  1.Download Video SD
echo                                                  2.Download Video HD
echo                                                  3.Download audio ONLY
echo                                                  4.Download PlayList
echo                                                  5.Update 
echo                                                  6.Exit
echo.

echo.

set /p choice= Enter Choice (1-6) 
echo %choice%


if %choice%==1 goto sd
if %choice%==2 goto hd 
if %choice%==3 goto mp3
if %choice%==4 goto playlist
if %choice%==5 goto update
if %choice%==6 goto out


echo invalid option
goto next	

:sd
set /p link=Paste The Link (Use ctrl+v or Right Click on CMD)  -  
youtube-dl -f mp4  %link%
goto next

:hd
set /p link=Paste The Link (Use ctrl+v or Right Click on CMD)  -  
youtube-dl -f best %link%
goto next

:mp3
set /p link=Paste The Link (Use ctrl+v or Right Click on CMD)  -  
youtube-dl  -x --audio-format mp3 %link%
goto next

:playlist
set /p link=Paste The Link (Use ctrl+v or Right Click on CMD)  -  
youtube-dl -i -f mp4 --yes-playlist  %link%
goto next

:update
pip install --upgrade youtube-dl
goto next





:next
echo.
echo Do you wanna Download More?
set /p val=[y/n]
if %val%==y goto top
if %val%==n goto out

:out
echo Are You Sure?
set /p opt=[y/n]
if %opt%==n goto top
if %opt%==y exit

pause



