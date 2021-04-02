#!/bin/bash

if test "$output_string" 
then
      sed -i "s/Hello World\!/$output_string/g" /dotnet_app/src/DotNetCoreHelloFromAppSettings/appsettings.json
      dotnet /dotnet_app/src/DotNetCoreHelloFromAppSettings/bin/Debug/netcoreapp5.0/DotNetCoreHelloFromAppSettings.dll
else
      dotnet /dotnet_app/src/DotNetCoreHelloFromAppSettings/bin/Debug/netcoreapp5.0/DotNetCoreHelloFromAppSettings.dll
fi
