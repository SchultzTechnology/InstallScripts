# Install Scripts

Run any of these for Fetchit related Installations

## Native Message Host Fix

```
Set-ExecutionPolicy Bypass -Scope Process -Force; [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; iex (Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/SchultzTechnology/InstallScripts/main/scripts/native_message_host_fix.ps1' -UseBasicParsing).Content
```