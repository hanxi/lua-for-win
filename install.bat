@echo off
set LUA_PATH=%~dp0
set ADDpath=%LUA_PATH%;
@echo "%PATH%" | find /i "%ADDpath%" || (setx PATH "%ADDpath%%PATH%" /M)
pause
