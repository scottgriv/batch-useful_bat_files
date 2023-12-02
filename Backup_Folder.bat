:: Author: Scott Grivner
:: Website: scottgrivner.dev

@ECHO OFF
IF "%~1"==" /?" GOTO HELP

SET archiveFolder="C:\File_Path\Your_Archive_Folder_Path\Your_Folder_%date:~-4,4%%date:~-10,2%%date:~7,2%"
SET currentFolder="C:\File_Path\Your_Folder"

MKDIR %archiveFolder%
echo Archive Directory Created
XCOPY /e /i /c %currentFolder% %archiveFolder%
echo Current Folder Copied
GOTO END

:HELP
ECHO This batch file creates an archive of the specified folder.
ECHO Usage:
ECHO    MyBatchFile.bat         Run the batch file normally.
ECHO    MyBatchFile.bat /?      Display this help message.
GOTO END

:END
