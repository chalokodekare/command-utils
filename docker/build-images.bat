#!/bin/bash

set SOURCE_ROOT=C:\Users\Projects\github\test
set COMMAND_FILES_PATH=C:\Users\Desktop\docker\commands
set SNAPSHOT_VERSION=2022

set "service=./docker-service.txt"
set /A i=0

for /F "usebackq delims=" %%a in ("%service%") do (
set /A i+=1
call echo %%i%%
call echo %%a

call cd %%SOURCE_ROOT%%
IF %%a==backend cd backend
IF %%a==frontend cd frontend
call cd %%a

call %COMMAND_FILES_PATH%\build.bat %%a %SNAPSHOT_VERSION%
rem call gradle clean bootjar; docker build --build-arg app=%%a --build-arg version=%SNAPSHOT_VERSION% -f Dockerfile -t %%a:latest .

call set n=%%i%%
)

cmd /k








