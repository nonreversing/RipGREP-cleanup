@echo off
cd %~dp0
echo Install ripGREP prior to running this. 
pause
set /p target="Enter .txt file to be cleansed within the directory this .BAT is executed: "
rg -vP :.*: %target% > %target%.tmp && rg : %target%.tmp > %target%
pause
/b