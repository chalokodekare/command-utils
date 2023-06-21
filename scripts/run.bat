@echo off
set debug_port=6810
set arg1=%1
call .\gradlew clean bootJar
for /f %%i in ('dir build\libs\ /b') do set jar_name=%%i
set jar_path=build/libs/%jar_name%
call echo %jar_path%
if "%arg1%"=="-d" java -Xms128m -Xmx216m -jar -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=%debug_port% -Dspring.profiles.active=development %jar_path% 
call java -Xms128m -Xmx216m -jar -Dspring.profiles.active=development %jar_path% 