Set-Location -Path $PSScriptRoot
Get-ChildItem .\ -include bin,obj -Recurse | foreach ($_) { remove-item $_.fullname -Force -Recurse }
&dotnet restore
&dotnet build