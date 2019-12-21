setlocal
cd /d c:\gitroot\aspnetcore30docker
call dotnet restore
call dotnet publish -c Debug
call docker build -t aspnetcore30 .
call docker run --name aspnetcore30 --rm -it -p 8080:80 aspnetcore30

