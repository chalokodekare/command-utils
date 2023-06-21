for /f "delims=" %%x in (%1) do set %%x
 
rmdir /s %MYSQL_DIR%\MySQLdata
rmdir /s %KAFKA_DATA_DIR%\kafka-logs
rmdir /s %KAFKA_DATA_DIR%\zookeeper
rmdir /s %ELASTICSEARCH_DATA_DIR%\nodes
 
start powershell.exe -Command "cd %MYSQL_DIR%\bin ; .\mysqld --initialize-insecure"