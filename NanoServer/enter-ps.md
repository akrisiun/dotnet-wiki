@powershell
Enter-PsSession -ComputerName 192.168.1.16 -Credential Administrator
cd \bin\

$dot = $Env:ProgramFiles + "\dotnet\dotnet.exe"

write-host $dot
&$dot --info
