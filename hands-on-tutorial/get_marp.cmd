:: @echo off
:: download "marp" executable & extract to current folder
:: https://marp.app/

setlocal
set version=4.2.3
set file=marp-cli-v%version%-win.zip

:: download file
del %file%  >nul 2>&1
bitsadmin /transfer get_marp /dynamic /download /priority foreground "https://github.com/marp-team/marp-cli/releases/download/v%version%/%file%" "%CD%\%file%"

:: unzip
powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::ExtractToDirectory('%CD%\%file%', '%CD%'); }"
del %file%  >nul 2>&1

:: clear local vars
endlocal
