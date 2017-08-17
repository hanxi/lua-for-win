@echo off
set LUA_PATH=%~dp0
set DEL_PATH=%LUA_PATH%;
call set NEW_PATH=%%PATH:%DEL_PATH%=%%
setx PATH "%NEW_PATH%" /M
pause
