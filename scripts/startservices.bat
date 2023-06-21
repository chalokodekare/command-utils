@echo off

set SOURCE_ROOT=C:\Users\1023237\OneDrive\github\test
set ES_DIR=C:\Users\1023237\OneDrive\Software\elasticsearch-7.14.0\bin
set KAFKA_DIR=C:\Users\1023237\OneDrive\Software\kafka_2.12-1.0.0

start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'kafka' ; cd %KAFKA_DIR% ; .\bin\windows\kafka-server-start.bat .\config\server.properties"

start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'zkserver' ; zkserver"

start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'elastic search' ; cd %ES_DIR% ; ./elasticsearch"

start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'auth-service' ; cd %SOURCE_ROOT%\plat-yoda-auth-service ; .\run.bat"

start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'config-service' ; cd %SOURCE_ROOT%\plat-yoda-config-service ; .\run.bat"

start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'gateway-service' ; cd %SOURCE_ROOT%\plat-yoda-gateway-service ; .\run.bat"

start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'ingest-service' ; cd %SOURCE_ROOT%\plat-yoda-ingest-service ; .\run.bat"

start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'ignite' ; cd %SOURCE_ROOT%\plat-test-ignite ; .\run.bat"

rem start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'node-service' ; cd %SOURCE_ROOT%\node-service ; .\run.bat"

rem start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'order-service' ; cd %SOURCE_ROOT%\order-service ; .\run.bat"

start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'transportation-service' ; cd %SOURCE_ROOT%\plat-test-transportation-service ; .\run.bat"

start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'process-model-service' ; cd %SOURCE_ROOT%\plat-test-process-model-service ; .\run.bat"

start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'staticdata-service' ; cd %SOURCE_ROOT%\plat-test-staticdata-service ; .\run.bat"

rem start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'alert-service' ; cd %SOURCE_ROOT%\alert-service ; .\run.bat"

start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'search-sync-service' ; cd %SOURCE_ROOT%\plat-test-search-sync-service ; .\run.bat"

rem start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'tracking-service' ; cd %SOURCE_ROOT%\plat-test-tracking-service ; .\run.bat"

rem start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'computation-backend' ; cd %SOURCE_ROOT%\computation-service\computation-backend ; .\run.bat -d"

rem start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'computation-frontend' ; cd %SOURCE_ROOT%\computation-service\computation-frontend ; .\run.bat"