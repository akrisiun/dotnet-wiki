# https://github.com/Microsoft/dotnet-framework-docker/blob/master/4.7/Dockerfile
FROM microsoft/windowsservercore
RUN powershell Invoke-WebRequest -Uri "https://download.microsoft.com/download/D/D/3/DD35CC25-6E9C-484B-A746-C5BE0C923290/NDP47-KB3186497-x86-x64-AllOS-ENU.exe" -OutFile NDP47-KB3186497-x86-x64-AllOS-ENU.exe & \
    .\NDP47-KB3186497-x86-x64-AllOS-ENU.exe /q & \ 
    del .\NDP47-KB3186497-x86-x64-AllOS-ENU.exe
    
@powershell 
Invoke-WebRequest -Uri "https://download.microsoft.com/download/D/D/3/DD35CC25-6E9C-484B-A746-C5BE0C923290/NDP47-KB3186497-x86-x64-AllOS-ENU.exe" -OutFile e:\NDP47.exe
Invoke-WebRequest -Uri "https://download.microsoft.com/download/D/D/3/DD35CC25-6E9C-484B-A746-C5BE0C923290/NDP47-KB3186497-x86-x64-AllOS-ENU.exe" -OutFile c:\bin\NDP47.exe