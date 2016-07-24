#### dotnet-wiki
Personal .NET clr, asp.net core web notes


# project.json

https://docs.microsoft.com/en-us/dotnet/articles/core/tools/project-json

practical problems
```
{
    "buildOptions": {
        "define": ["TEST"]
        ,  "nowarn": ["CS0168", "CS0219"]

    }


"buildOptions": {
  "allowUnsafe": true,
  "emitEntryPoint": true
}

"dependencies": {
     "System.Reflection.Metadata": "1.3.0"
    , "Microsoft.Extensions.JsonParser.Sources": {
      "type": "build",  "version": "1.0.0-rc2-20221"
    }
    , "Microsoft.Extensions.HashCodeCombiner.Sources": {
           "type": "build",      "version": "1.1.0-alpha1-21456"
    }
    , "Microsoft.Extensions.DependencyModel": "1.0.0-*"
}

```
