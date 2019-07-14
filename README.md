#### dotnet-wiki, notes about C#, F#, .net45, .net46 and netstandard1.3,   netstandard2.0
Personal .NET clr, asp.net core web notes  
[Sources-MvcCore.md](Sources-MvcCore.md)
[project-json.md](dotnet/project-json.md) - obsolete

## BUILD for VsCode with error output:

```dotnet msbuild /p:GenerateFullPaths=true;Configuration=Debug; /v:m
```

### project.json (obsolete)
<https://docs.microsoft.com/en-us/dotnet/articles/core/tools/project-json>

### CSPROJ workarounds:

```
    <!-- dotnet workarounds -->
    <IgnoreTargetFrameworkAttributeVersionMismatch>true</IgnoreTargetFrameworkAttributeVersionMismatch>
    <AppendTargetFrameworkToOutputPath>false</AppendTargetFrameworkToOutputPath>
    <RestorePackages>true</RestorePackages>
    <ContinueOnError>true</ContinueOnError>
    
<Project>
  <Sdk Name="Microsoft.NET.Sdk" ToolsVersion="15.0" />
  <PropertyGroup>
    <Configuration Condition=" '$(Configuration)' == '' ">Debug</Configuration>
    <Platform Condition=" '$(Platform)' == '' ">AnyCPU</Platform>
    
    <TargetFramework>net461</TargetFramework>
    <EnableDefaultCompileItems>true</EnableDefaultCompileItems>

# TEST unit:

  <ItemGroup>
    <PackageReference Include="Antlr" Version="3.5.0.2" />
    <PackageReference Include="Castle.Core" Version="4.2.1" />
    <PackageReference Include="Moq" Version="4.8.2" />

    <PackageReference Include="MSTest.TestAdapter" Version="1.2.0" />
    <PackageReference Include="MSTest.TestFramework" Version="1.2.0" />
    <PackageReference Include="Microsoft.NET.Test.Sdk" Version="15.6.0" />
    <PackageReference Include="Microsoft.VisualStudio.TestPlatform.ObjectModel" Version="14.0.0" />
    
    <PackageReference Include="Newtonsoft.Json" Version="11.0.2" />
...
```

### CSPROJ:

https://gist.github.com/akrisiun/ef660c54b1eecd3276221a639fabdf7a  

OSX path:  
export FrameworkPathOverride=/Library/Frameworks/Mono.framework/Versions/Current/lib/mono/4.5  
pwsh  
$env:FrameworkPathOverride="/Library/Frameworks/Mono.framework/Versions/Current/lib/mono/4.5"  

Usefull properties:  
GenerateAssemblyInfo  
EnableDefaultCompileItems  
AllowUnsafeBlocks  
AppendTargetFrameworkToOutputPath
IgnoreTargetFrameworkAttributeVersionMismatch
```
AllowUnsafeBlocks AppendTargetFrameworkToOutputPath
<EnableDefaultCompileItems>false</EnableDefaultCompileItems>
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <!-- Condition="'$(OS)' == 'Windows_NT'" -->
    <TargetFrameworks>net451</TargetFrameworks>
    <TargetFrameworkVersion>v4.5.1</TargetFrameworkVersion>
    <GenerateAssemblyInfo>false</GenerateAssemblyInfo>
    <EnableDefaultCompileItems>false</EnableDefaultCompileItems>
    <ContinueOnError>true</ContinueOnError>
    <GenerateResourceMSBuildArchitecture>CurrentArchitecture</GenerateResourceMSBuildArchitecture>    
    <AppendTargetFrameworkToOutputPath>false</AppendTargetFrameworkToOutputPath>
  </PropertyGroup>
  <PropertyGroup>
    <Configuration Condition=" '$(Configuration)' == '' ">Debug</Configuration>
    <Platform Condition=" '$(Platform)' == '' ">AnyCPU</Platform>

LEGACY .net
  <ItemGroup Condition=" '$(TargetFrameworkIdentifier)' == '.NETFramework' ">
    <Reference Include="System" />
    <Reference Include="System.Xml" />
    <Reference Include="Microsoft.CSharp" />
    <PackageReference Include="System.IO.Compression" Version="4.3.0" />
  </ItemGroup>


<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <TargetFrameworks>net451</TargetFrameworks>
    <!-- <TargetFrameworks>netstandard2.0;netstandard1.3;net451</TargetFrameworks> -->
    <EnableDefaultCompileItems>true</EnableDefaultCompileItems>
    <GenerateAssemblyInfo>false</GenerateAssemblyInfo>
    <VersionPrefix>1.0.0</VersionPrefix>
    <VersionSuffix>alpha</VersionSuffix>
    <AssemblyName>UString</AssemblyName>
    <PackageId>UString</PackageId>
    <NetStandardImplicitPackageVersion>1.6.0</NetStandardImplicitPackageVersion>
    <AllowUnsafeBlocks>true</AllowUnsafeBlocks>  
  </PropertyGroup>

  <ItemGroup>
    <PackageReference 
        Include="Microsoft.TargetingPack.NETFramework.v4.6.2" Version="1.0.1" ExcludeAssets="All" PrivateAssets="All" />
  </ItemGroup>
   <PropertyGroup>
     <RuntimeIdentifiers>win7-x64;osx.10-11-x64;ubuntu.16.04-x64</RuntimeIdentifiers>
    <OutputPath>..\..\lib\</OutputPath>
    <FileUpgradeFlags />
    <Version>1.6.0</Version>
  </PropertyGroup>
  <PropertyGroup 
      Condition="'$(Configuration)|$(TargetFramework)|$(Platform)'=='Debug|net452|AnyCPU'">
    <DefineConstants>TRACE;DEBUG;NET452;NETCORE</DefineConstants>
  </PropertyGroup>

  <ItemGroup Condition=" '$(TargetFramework)' == 'netstandard1.3' ">
    <PackageReference Include="System.Xml.XDocument" Version="4.3.0" />
  </ItemGroup>
  <ItemGroup Condition=" '$(TargetFramework)' == 'net451' ">
    <Reference Include="System.ServiceModel" />
    <Reference Include="System.Xml" />
    <Reference Include="System.Xml.Linq" />
    <Reference Include="System" />
    <Reference Include="Microsoft.CSharp" />
  </ItemGroup>
  <ItemGroup>
    <PackageReference Include="System.ValueTuple" Version="4.3.0" />
    <PackageReference Include="runtime.win7-x86.Microsoft.NETCore.Runtime.CoreCLR" Version="1.0.1" />
    <!--      <PackageReference Include="System.Private.CoreLib     -->
  </ItemGroup>
</Project>    
```

### Cross platform

dotnet add package Microsoft.TargetingPack.NETFramework.v4.5.1 --version 1.0.1 --source https://dotnet.myget.org/F/dotnet-core/api/v3/index.json

```
dotnet add package Microsoft.TargetingPack.NETFramework.v4.6   --version 1.0.1 --source https://dotnet.myget.org/F/dotnet-core/api/v3/index.json
export FrameworkPathOverride=/Library/Frameworks/Mono.framework/Versions/5.0.1/lib/mono/4.5   

## show cfg
ls /Library/Frameworks/Mono.framework/Versions/5.0.1/lib/mono/
dotnet --info | grep "RID"
export FrameworkPathOverride=/Library/Frameworks/Mono.framework/Versions/5.0.1/lib/mono/4.5
export RuntimeIdentifier=$(dotnet --info | grep "RID" | awk '{print $2}')
```

### Cross platform powershell build

build.ps1
```
$msbuild="C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\MSBuild.exe"
if (-not (test-path $msbuild)) {
    $msbuild="$env:ProgramFiles (x86)\MSBuild\15.0\Bin\MSBuild.exe"
}
$os = "win32"
if ($PSVersionTable.Platform -eq "Unix") {
    $os = "Unix"
}

if ($os -eq "win32" -and -not (test-path $msbuild)) {
    # Install-Module VSSetup -Scope CurrentUser -Force
    $vspath = (Get-VSSetupInstance -All -Prerelease | Select-VSSetupInstance).InstallationPath
    $msbuild="$vspath\MSBuild\15.0\Bin\MSBuild.exe"
} else {
    $msbuild = "msbuild"
    if ($PSItem) { 
        # $PSVersionTable.OS.BeginsWith("Darwin")
        $env:FrameworkPathOverride="/Library/Frameworks/Mono.framework/Versions/Current/lib/mono/4.5"
    }
    # dotnet add package Microsoft.TargetingPack.NETFramework.v4.6.2  --version 1.0.1 --source https://dotnet.myget.org/F/dotnet-core/api/v3/index.json
}
```

### csproj for .NET core (sdk libraries)
<https://docs.microsoft.com/en-us/dotnet/core/tools/project-json-to-csproj>

## C# Source 

https://source.dot.net/
https://referencesource.microsoft.com/

Main: 
https://source.dot.net/#System.Linq.Expressions
https://source.dot.net/#q=interface%20IQueryable
https://github.com/dotnet/corefx/blob/master/src/System.Linq.Expressions/src/System/Linq/IQueryable.cs

https://source.dot.net/#q=EventSource

## Tutorials



# .csproj for .NET core (sdk libraries)  
https://docs.microsoft.com/en-us/dotnet/core/tools/project-json-to-csproj

# project.json (obsolete)
https://docs.microsoft.com/en-us/dotnet/articles/core/tools/project-json


dotnet-wiki <https://github.com/akrisiun/dotnet-wiki>

Personal .NET clr, asp.net core web notes  
[Sources-MvcCore.md](Sources-MvcCore.md)
[project-json.md](project-json.md) - obsolete

##  Myget

https://dotnet.myget.org/users/dotnetframework
