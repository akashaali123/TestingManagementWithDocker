#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

#FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim 
COPY dist /app
WORKDIR /app
EXPOSE 80/tcp
#CMD ASPNETCORE_URLS=http://*:$PORT dotnet WebApi.dll
ENTRYPOINT ["dotnet","TestManagementApi.dll"]

