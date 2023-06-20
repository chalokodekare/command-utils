set SCRIPTS_PATH=C:\Users\1023237\Desktop\test-Scripts

start powershell -NoExit "$host.UI.RawUI.WindowTitle = 'updating schema' ; mysql -u root --password=root -e 'source %SCRIPTS_PATH%\importSchema.sql'

cmd /k