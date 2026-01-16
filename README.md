# Install Scripts

Run any of these for Fetchit related Installations

## Native Message Host Fix

```
Set-ExecutionPolicy Bypass -Scope Process -Force;
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12;
$script = Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/SchultzTechnology/InstallScripts/main/scripts/native_message_host_fix.ps1' -UseBasicParsing;
Invoke-Expression $($script.Content)
```