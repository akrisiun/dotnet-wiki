set DOTNET_SDK_VERSION=2.0.0
set DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-win-x64.zip
set DOTNET_SDK_DOWNLOAD_SHA=C0942299437541C6B173F71213B43D2CC1E0EBC5C75F78948C0C6279A8D1C5B293999C93863392A4219F819B1DDD73D95112930B08EC8DDAA89918931E492DB0

@powershell Invoke-WebRequest $Env:DOTNET_SDK_DOWNLOAD_URL -OutFile dotnet.zip
