docker rmi psadt-tester >nul 2>&1
docker build . -t psadt-tester >nul 2>&1
docker run --user "NT AUTHORITY\SYSTEM" --rm -it psadt-tester
pause