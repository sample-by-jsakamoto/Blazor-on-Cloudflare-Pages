#!/bin/sh
export DOTNET_NOLOGO=true
set DOTNET_CLI_TELEMETRY_OPTOUT=true
curl -sSL https://dot.net/v1/dotnet-install.sh > dotnet-install.sh
chmod +x dotnet-install.sh
./dotnet-install.sh -c 9.0 -InstallDir ./dotnet
./dotnet/dotnet --version
./dotnet/dotnet workload install wasm-tools
./dotnet/dotnet publish -c Release -o output