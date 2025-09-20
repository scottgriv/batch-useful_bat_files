:: Author: Scott Grivner
:: Website: linktr.ee/scottgriv

@ECHO OFF
IF "%~1"==" /?" GOTO HELP

TIMEOUT /T 10
:BEGIN
EVENTCREATE /T ERROR /L APPLICATION /ID 100 /D "This is your error message."
GOTO END

:HELP
ECHO This batch file waits for 10 seconds and then logs an error event in the Application log.
ECHO Usage:
ECHO    MyBatchFile.bat         Run the batch file normally.
ECHO    MyBatchFile.bat /?      Display this help message.
GOTO END

:END
