dotnet-wiki <https://github.com/akrisiun/dotnet-wiki>

Personal .NET clr, asp.net core web notes  
[Sources-MvcCore.md](Sources-MvcCore.md)
[project-json.md](project-json.md) - obsolete

### csproj for .NET core (sdk libraries)
<https://docs.microsoft.com/en-us/dotnet/core/tools/project-json-to-csproj>

### project.json (obsolete)
<https://docs.microsoft.com/en-us/dotnet/articles/core/tools/project-json>

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
    <PackageReference Include="System.ValueTuple" Version="4.3.0" />
    <PackageReference Include="runtime.win7-x86.Microsoft.NETCore.Runtime.CoreCLR" Version="1.0.1" />
    <!--      <PackageReference Include="System.Private.CoreLib     -->
  </ItemGroup>
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
```  