:: Created by: Scott Grivner
:: Website: scottgrivner.dev

:: Outbound Folder - FROM SYSTEM
SET fromFolder=\\Folder_Path\outbound\*
:: Inbound Folder - TO SYSTEM
SET toFolder=E:\Folder_Path\inbound

MOVE %fromFolder% %toFolder%
