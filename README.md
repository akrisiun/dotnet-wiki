#### dotnet-wiki, notes about C#, F#, .net45, .net46 and netstandard1.3,   netstandard2.0
Personal .NET clr, asp.net core web notes  
[Sources-MvcCore.md](Sources-MvcCore.md)
[project-json.md](dotnet/project-json.md) - obsolete

### project.json (obsolete)
<https://docs.microsoft.com/en-us/dotnet/articles/core/tools/project-json>

### CSPROJ:

https://gist.github.com/akrisiun/ef660c54b1eecd3276221a639fabdf7a

Usefull properties:  
GenerateAssemblyInfo  
EnableDefaultCompileItems  
AllowUnsafeBlocks
```
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