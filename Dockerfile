FROM mcr.microsoft.com/dotnet/sdk:5.0

COPY . ./dotnet_app
WORKDIR /dotnet_app/src/DotNetCoreHelloFromAppSettings
RUN dotnet build DotNetCoreHelloFromAppSettings.csproj

ENTRYPOINT ["/dotnet_app/docker-entrypoint.sh"]