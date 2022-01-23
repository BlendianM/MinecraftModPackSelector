@ECHO OFF
echo Mincrat ModPack Selector Made by XPaulon
cls
setlocal
:PROMPT
SET /P AREYOUSURE=First time run? (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
cd %AppData%
cd .minecraft
mkdir ModPackSelector
cd ModPackSelector
mkdir 1
mkdir 2
mkdir 3
mkdir 4
mkdir 5
cls
echo Go to your minecraft directory and you will see a folder named "ModPackSelector" and there you can see your mod packs named 1,2,3,4 and 5.(do not rename them).
pause
:END
endlocal
:BEGIN
CLS
CHOICE /N /C:12345 /M "PICK A ModPack (1, 2, 3, 4 or 5)"%1
IF ERRORLEVEL ==5 GOTO Five
IF ERRORLEVEL ==4 GOTO Four
IF ERRORLEVEL ==3 GOTO THREE
IF ERRORLEVEL ==2 GOTO TWO
IF ERRORLEVEL ==1 GOTO ONE
GOTO END1
:Five
ECHO YOU HAVE PRESSED Five
robocopy %AppData%\.minecraft\ModPackSelector\5 %AppData%\.minecraft\mods /mir
cls
echo Finished
GOTO END1
:Four
ECHO YOU HAVE PRESSED Four
robocopy %AppData%\.minecraft\ModPackSelector\4 %AppData%\.minecraft\mods /mir
cls
echo Finished
GOTO END1
:THREE
ECHO YOU HAVE PRESSED THREE
robocopy %AppData%\.minecraft\ModPackSelector\3 %AppData%\.minecraft\mods /mir
cls
echo Finished
GOTO END1
:TWO
ECHO YOU HAVE PRESSED TWO
robocopy %AppData%\.minecraft\ModPackSelector\2 %AppData%\.minecraft\mods /mir
cls
echo Finished
GOTO END1
:ONE
ECHO YOU HAVE PRESSED ONE
robocopy %AppData%\.minecraft\ModPackSelector\1 %AppData%\.minecraft\mods /mir
cls
echo Finished
:END1
pause