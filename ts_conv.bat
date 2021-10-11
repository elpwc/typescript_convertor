@echo off && setlocal enabledelayedexpansion
title Typescript Convertor
set j_=0
for /r %%i in (*.ts) do (
    set /a j_+=1
)
set count=!j_!
set j_=0
for /r %%i in (*.ts) do (
    set /a j_+=1
    echo [!j_!/%count%]Current converting file: 
    echo %%i
    choice /c YN /m "> Skip"
    if errorlevel 2 (
        setlocal
        tsc %%i --target es6
        rem remove "--target es6" if you want to compile in es5
        endlocal
        echo.
        pause
    )
)
echo Done. && pause >nul

::w 2021-10-11 09:37
