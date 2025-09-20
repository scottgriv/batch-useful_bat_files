:: Author: Scott Grivner
:: Website: linktr.ee/scottgriv

@echo off 
    setlocal enableextensions disabledelayedexpansion

    set "search=failed"
    set "replace=reprocessed"

    set "textFile=%1.log"

    for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
        set "line=%%i"
        setlocal enabledelayedexpansion
        >>"%textFile%" echo(!line:%search%=%replace%!
        endlocal
    )
