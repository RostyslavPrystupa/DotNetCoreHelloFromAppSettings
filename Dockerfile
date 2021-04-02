FROM mcr.microsoft.com/dotnet/sdk:5.0

COPY . ./test
WORKDIR /test/src/DotNetCoreHelloFromAppSettings
RUN dotnet build DotNetCoreHelloFromAppSettings.csproj
RUN ls -la 
RUN dotnet /test/src/DotNetCoreHelloFromAppSettings/bin/Debug/netcoreapp5.0/DotNetCoreHelloFromAppSettings.dll

ENTRYPOINT ["dotnet", "/test/src/DotNetCoreHelloFromAppSettings/bin/Debug/netcoreapp5.0/DotNetCoreHelloFromAppSettings.dll"]

