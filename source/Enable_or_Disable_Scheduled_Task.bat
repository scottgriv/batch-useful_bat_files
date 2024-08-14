:: Author: Scott Grivner
:: Website: scottgrivner.dev

@ECHO OFF
IF "%~1"==" /?" GOTO HELP

IF "%1"=="DISABLE"  (
    schtasks /change /tn "Task Folder\Test Task" /Disable
) 

IF "%1"=="ENABLE"  (
    schtasks /change /tn "Task Folder\Test Task" /Enable
)
GOTO END

:HELP
ECHO This batch file enables or disables a scheduled task.
ECHO Usage:
ECHO    MyBatchFile.bat DISABLE  Disable the task.
ECHO    MyBatchFile.bat ENABLE   Enable the task.
ECHO    MyBatchFile.bat /?       Display this help message.
GOTO END

:END
