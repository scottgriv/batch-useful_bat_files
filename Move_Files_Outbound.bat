:: Created by: Scott Grivner
:: Website: scottgrivner.dev

:: Archive Folder - FROM SYSTEM /w TODAY'S DATE
SET archiveFolder=E:\Your_Folder\outbound\archive\%date:~-4,4%-%date:~-10,2%-%date:~7,2%
:: Outbound Folder - FROM SYSTEM
SET fromFolder=E:\Folder_Path\outbound\*
:: Inbound Folder - TO SYSTEM
SET toFolder=\\Folder_Path\inbound

:: Archive Files
IF EXIST %archiveFolder%\ (
COPY %fromFolder% %toFolder%
MOVE %fromFolder% %archiveFolder%
echo Files Moved
:: Create Archive File if it does not exist then Archive Files
) ELSE (
echo Archive Directory Created
MKDIR %archiveFolder%
COPY %fromFolder% %toFolder%
MOVE %fromFolder% %archiveFolder%
echo Files Moved
)