:: Created by: Scott Grivner
:: Website: scottgrivner.dev

del favicon.ico
wget -N --tries=1 --timeout=5 "http://your_website_url"

if exist favicon.ico (
    echo [Website Up]
) else (
    some-other-batch-file.bat
    echo [Website Down]
)
del favicon.ico