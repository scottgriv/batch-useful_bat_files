:: Created by: Scott Grivner
:: Website: scottgrivner.dev

IF "%1"=="DISABLE"  (
    schtasks /change /tn "Task Folder\Test Task" /Disable
) 

IF "%1"=="ENABLE"  (
    schtasks /change /tn "Task Folder\Test Task" /Enable
)