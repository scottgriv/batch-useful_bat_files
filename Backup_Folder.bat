:: Author: Scott Grivner
:: Website: scottgrivner.dev

SET archiveFolder="C:\File_Path\Your_Archive_Folder_Path\Your_Folder_%date:~-4,4%%date:~-10,2%%date:~7,2%"
SET currentFolder="C:\File_Path\Your_Folder"

MKDIR %archiveFolder%
echo Archive Directory Created
XCOPY /e /i /c %currentFolder% %archiveFolder%
echo Current Folder Copied
