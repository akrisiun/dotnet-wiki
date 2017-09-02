set DOTNET_SDK_VERSION=2.0.0
set DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-win-x64.zip
set DOTNET_SDK_DOWNLOAD_SHA=C0942299437541C6B173F71213B43D2CC1E0EBC5C75F78948C0C6279A8D1C5B293999C93863392A4219F819B1DDD73D95112930B08EC8DDAA89918931E492DB0

echo @powershell Invoke-WebRequest %DOTNET_SDK_DOWNLOAD_URL% -OutFile dotnet.zip
@powershell Invoke-WebRequest %DOTNET_SDK_DOWNLOAD_URL% -OutFile dotnet.zip
Invoke-WebRequest https://dotnetcli.blob.core.windows.net/dotnet/Sdk/2.0.0/dotnet-sdk-2.0.0-win-x64.zip -OutFile dotnet.zip

mkdir %ProgramFiles%\dotnet

New-Item $Env:ProgramFiles\dotnet  -ItemType directory
Write-Host $Env:ProgramFiles\dotnet
Expand-Archive dotnet.zip -DestinationPath $Env:ProgramFiles\dotnet
$dot = $Env:ProgramFiles + "\dotnet\dotnet.exe"
C:\Program Files\dotnet> write-host $dot
&$dot --info

# Dockerfile for Windows nanoserver
  
  https://github.com/dotnet/dotnet-docker/blob/master/2.0/sdk/nanoserver/amd64/Dockerfile
  
# Install .NET Core SDK

ENV DOTNET_SDK_VERSION 2.0.0

ENV DOTNET_SDK_DOWNLOAD_URL https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-win-x64.zip

ENV DOTNET_SDK_DOWNLOAD_SHA C0942299437541C6B173F71213B43D2CC1E0EBC5C75F78948C0C6279A8D1C5B293999C93863392A4219F819B1DDD73D95112930B08EC8DDAA89918931E492DB0



RUN Invoke-WebRequest $Env:DOTNET_SDK_DOWNLOAD_URL -OutFile dotnet.zip; \

    if ((Get-FileHash dotnet.zip -Algorithm sha512).Hash -ne $Env:DOTNET_SDK_DOWNLOAD_SHA) { \

        Write-Host 'CHECKSUM VERIFICATION FAILED!'; \

        exit 1; \

    }; \

    \

    Expand-Archive dotnet.zip -DestinationPath $Env:ProgramFiles\dotnet; \
    