:: Author: Scott Grivner
:: Website: linktr.ee/scottgriv

@echo off
setlocal EnableExtensions EnableDelayedExpansion

REM ================= CONFIG =================
set "WATCH_DIR=C:\FolderWatcher\Watch"
set "LOG_FILE=C:\FolderWatcher\Logs\Watch-Folder-Log.log"
set "STATE_FILE=C:\FolderWatcher\Logs\Watch-Folder-State.tsv"
set "INTERVAL_SECONDS=5"
REM =========================================

if not exist "%WATCH_DIR%" exit /b 2

for %%I in ("%LOG_FILE%") do (
    if not exist "%%~dpI" mkdir "%%~dpI" >nul 2>&1
)

echo [%date% %time%] START watching "%WATCH_DIR%" (poll %INTERVAL_SECONDS%s)>>"%LOG_FILE%"

REM Snapshot format: fullpath<TAB>size<TAB>lastwrite
:loop
> "%STATE_FILE%.new" (
    for /f "delims=" %%F in ('dir /s /b /a:-d "%WATCH_DIR%" 2^>nul') do (
        for %%A in ("%%F") do (
            echo %%~fF	%%~zA	%%~tA
        )
    )
)

REM First run baseline
if not exist "%STATE_FILE%" (
    move /y "%STATE_FILE%.new" "%STATE_FILE%" >nul
    timeout /t %INTERVAL_SECONDS% /nobreak >nul
    goto loop
)

REM ------------------ CREATED ------------------
for /f "usebackq delims=" %%P in (`
    powershell -NoProfile -Command ^
      "$old = @(if(Test-Path -LiteralPath '%STATE_FILE%'){ Get-Content -LiteralPath '%STATE_FILE%' } else { @() }) | %%{ ($_ -split \"\t\")[0] };" ^
      "$new = @(if(Test-Path -LiteralPath '%STATE_FILE%.new'){ Get-Content -LiteralPath '%STATE_FILE%.new' } else { @() }) | %%{ ($_ -split \"\t\")[0] };" ^
      "Compare-Object -ReferenceObject $old -DifferenceObject $new -PassThru | ?{ $_.SideIndicator -eq '=>' }" ^
    2^>nul
`) do (
    echo [%date% %time%] CREATED %%P>>"%LOG_FILE%"
)

REM ------------------ DELETED ------------------
for /f "usebackq delims=" %%P in (`
    powershell -NoProfile -Command ^
      "$old = @(if(Test-Path -LiteralPath '%STATE_FILE%'){ Get-Content -LiteralPath '%STATE_FILE%' } else { @() }) | %%{ ($_ -split \"\t\")[0] };" ^
      "$new = @(if(Test-Path -LiteralPath '%STATE_FILE%.new'){ Get-Content -LiteralPath '%STATE_FILE%.new' } else { @() }) | %%{ ($_ -split \"\t\")[0] };" ^
      "Compare-Object -ReferenceObject $old -DifferenceObject $new -PassThru | ?{ $_.SideIndicator -eq '<=' }" ^
    2^>nul
`) do (
    echo [%date% %time%] DELETED %%P>>"%LOG_FILE%"
)

REM ------------------ MODIFIED ------------------
for /f "usebackq delims=" %%P in (`
    powershell -NoProfile -Command ^
      "$old=@{}; if(Test-Path -LiteralPath '%STATE_FILE%'){ Get-Content -LiteralPath '%STATE_FILE%' | %%{ $s=$_ -split \"\t\"; if($s.Length -ge 3){ $old[$s[0]]=$s[1]+'|'+$s[2] } } };" ^
      "$new=@{}; if(Test-Path -LiteralPath '%STATE_FILE%.new'){ Get-Content -LiteralPath '%STATE_FILE%.new' | %%{ $s=$_ -split \"\t\"; if($s.Length -ge 3){ $new[$s[0]]=$s[1]+'|'+$s[2] } } };" ^
      "$new.Keys | %%{ if($old.ContainsKey($_) -and $old[$_] -ne $new[$_]){ $_ } }" ^
    2^>nul
`) do (
    echo [%date% %time%] MODIFIED %%P>>"%LOG_FILE%"
)

move /y "%STATE_FILE%.new" "%STATE_FILE%" >nul
timeout /t %INTERVAL_SECONDS% /nobreak >nul
goto loop
