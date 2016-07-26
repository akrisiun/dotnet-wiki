### Sources-MvcCore.md

Core of all projects:
[Newtonsoft.Json/project.json](https://github.com/JamesNK/Newtonsoft.Json/blob/master/Src/Newtonsoft.Json/project.json)

## HttpAbstrations

[https://github.com/aspnet/HttpAbstractions/tree/dev/src](https://github.com/aspnet/HttpAbstractions/tree/dev/src)

sequence:  Http.Features, Http.Abstractions
[https://github.com/aspnet/HttpAbstractions/tree/dev/src/Microsoft.AspNetCore.Http.Features](https://github.com/aspnet/HttpAbstractions/tree/dev/src/Microsoft.AspNetCore.Http.Features/project.json)
[https://github.com/aspnet/HttpAbstractions/tree/dev/src/Microsoft.AspNetCore.Http.Abstractions](https://github.com/aspnet/HttpAbstractions/tree/dev/src/Microsoft.AspNetCore.Http.Abstractions/project.json)
[https://github.com/aspnet/HttpAbstractions/tree/dev/src/Microsoft.AspNetCore.Http](https://github.com/aspnet/HttpAbstractions/tree/dev/src/Microsoft.AspNetCore.Http)
[https://github.com/aspnet/HttpAbstractions/tree/dev/src/Microsoft.AspNetCore.WebUtilities/project.json](https://github.com/aspnet/HttpAbstractions/tree/dev/src/Microsoft.AspNetCore.WebUtilities/project.json)
```
  AspNetCore.Http:
  "dependencies": {
    "Microsoft.AspNetCore.Http.Abstractions": "1.1.0-*",
    "Microsoft.AspNetCore.WebUtilities": "1.1.0-*",
    "Microsoft.Extensions.ObjectPool": "1.1.0-*",
    "Microsoft.Extensions.Options": "1.1.0-*",
    "Microsoft.Net.Http.Headers": "1.1.0-*",
    "System.Buffers": "4.0.0-*"
```    

[https://github.com/aspnet/HttpAbstractions/tree/dev/src/Microsoft.Net.Http.Headers](https://github.com/aspnet/HttpAbstractions/tree/dev/src/Microsoft.Net.Http.Headers)
[https://github.com/aspnet/HttpAbstractions/tree/dev/src/Microsoft.AspNetCore.Owin](https://github.com/aspnet/HttpAbstractions/tree/dev/src/Microsoft.AspNetCore.Owin)
[https://github.com/aspnet/HttpAbstractions/tree/dev/src/Microsoft.AspNetCore.Http.Extensions](https://github.com/aspnet/HttpAbstractions/tree/dev/src/Microsoft.AspNetCore.Http.Extensions)

## ASPNET

Abstractions
[https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.Abstractions/project.json](https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.Abstractions/project.json)

Mvc.Core
[https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.Core/project.json](https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.Core/project.json)

Razor
[https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.Razor.Host/project.json](https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.Razor.Host/project.json])
[https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.Razor/project.json](https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.Razor/project.json)

Mvc.Formatters Xml, Json
[https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.Formatters.Xml/project.json](https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.Formatters.Xml/project.json) 
[https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.Formatters.Json/project.json](https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.Formatters.Json/project.json)
and JsonPatch:
[https://github.com/aspnet/JsonPatch/tree/dev/src/Microsoft.AspNetCore.JsonPatch/project.json](https://github.com/aspnet/JsonPatch/tree/dev/src/Microsoft.AspNetCore.JsonPatch/project.json)

DataAnnotations
[https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.DataAnnotations/project.json](https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.DataAnnotations/project.json)

ViewFeatures
[https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.ViewFeatures/project.json](https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.ViewFeatures/project.json)

WebApiCompatShim
[https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.WebApiCompatShim/project.json](https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.WebApiCompatShim/project.json)
[https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.Localization/project.json](https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.Localization/project.json)

other: BasicMiddleware, Cors, ApiExplorer
[https://github.com/aspnet/BasicMiddleware/tree/dev/src](https://github.com/aspnet/BasicMiddleware/tree/dev/src)

## Extensions

[https://github.com/aspnet/Logging/tree/dev/src/Microsoft.Extensions.Logging/project.json](https://github.com/aspnet/Logging/tree/dev/src/Microsoft.Extensions.Logging/project.json)  
[https://github.com/aspnet/Logging/tree/dev/src/Microsoft.Extensions.Logging.TraceSource/project.json](https://github.com/aspnet/Logging/tree/dev/src/Microsoft.Extensions.Logging.TraceSource/project.json)

[https://github.com/aspnet/JsonPatch/tree/dev/src/Microsoft.AspNetCore.JsonPatch/project.json](https://github.com/aspnet/JsonPatch/tree/dev/src/Microsoft.AspNetCore.JsonPatch/project.json)

```
"Microsoft.AspNetCore.Mvc.ViewFeatures": "1.1.0-*",
    "Microsoft.Extensions.Caching.Memory": "1.1.0-*",
    "Microsoft.Extensions.DependencyInjection": "1.1.0-*",
    "Microsoft.Extensions.PropertyHelper.Sources": {
```

KestrelHttpServer
[https://github.com/akrisiun/KestrelHttpServer/tree/dev/src/Microsoft.AspNetCore.Server.Kestrel/project.json](https://github.com/akrisiun/KestrelHttpServer/tree/dev/src/Microsoft.AspNetCore.Server.Kestrel/project.json)

IISIntegration 
[https://github.com/aspnet/IISIntegration](IISIntegration)https://github.com/aspnet/IISIntegration](IISIntegration  
[https://github.com/aspnet/IISIntegration/blob/dev/src/Microsoft.AspNetCore.Server.IISIntegration/project.json](https://github.com/aspnet/IISIntegration/blob/dev/src/Microsoft.AspNetCore.Server.IISIntegration/project.json)

## Fork 

Src https://github.com/akrisiun/Mvc6/tree/master/src  
Vendor https://github.com/akrisiun/Mvc6/tree/master/vendor/  

