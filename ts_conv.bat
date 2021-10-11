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
    echo [!j_!/%count%]Current converting file: %%i
    choice /c YN /m "> Jump"
    if errorlevel 1 (
        setlocal
        tsc %%i
        endlocal
        echo.
        pause
    )
)

::w 2021-10-11 09:37
