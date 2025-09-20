:: Author: Scott Grivner
:: Website: linktr.ee/scottgriv

:: Kill Task
taskkill /f /im Program_To_Kill.exe

:: Prompt Box
echo msgbox "Program has been successfully killed!" > %tmp%\tmp.vbs
cscript /nologo %tmp%\tmp.vbs
del %tmp%\tmp.vbs
