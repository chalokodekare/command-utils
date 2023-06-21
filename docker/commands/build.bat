set IMAGE_NAME=%1
set SNAPSHOT_VERSION=%2

cmd /c "gradle bootjar"
docker build --build-arg app=%IMAGE_NAME% --build-arg version=%SNAPSHOT_VERSION% -f Dockerfile -t %IMAGE_NAME%:latest .