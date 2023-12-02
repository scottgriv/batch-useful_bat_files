:: Author: Scott Grivner
:: Website: scottgrivner.dev

@ECHO OFF
IF "%~1"==" /?" GOTO HELP

del favicon.ico
wget -N --tries=1 --timeout=5 "http://your_website_url"

if exist favicon.ico (
    echo [Website Up]
) else (
    some-other-batch-file.bat
    echo [Website Down]
)
del favicon.ico
GOTO END

:HELP
ECHO This batch file checks if a website is up by attempting to download its favicon.
ECHO If the favicon is downloaded, the website is up; otherwise, it runs another batch file.
ECHO Usage:
ECHO    MyBatchFile.bat         Run the batch file normally.
ECHO    MyBatchFile.bat /?      Display this help message.
GOTO END

:END
