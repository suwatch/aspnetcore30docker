setlocal
cd /d c:\gitroot\aspnetcore30docker
call dotnet restore
call dotnet publish -c Debug

REM to local registry
REM call docker build -t aspnetcore30 .
REM call docker run --name aspnetcore30 --rm -it -p 8080:80 aspnetcore30

REM to docker hub registry
REM docker login --username=suwatch01
REM docker build -t suwatch01/aspnetcore30 .
REM docker push suwatch01/aspnetcore30:latest

