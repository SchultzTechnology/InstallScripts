# Get the APPDATA environment variable for the current user
# %APPDATA% typically resolves to C:\Users\<username>\AppData\Roaming
$appDataPath = $env:APPDATA
 
# Construct the full path to the native-message-host.chrome.json file
# We are appending the @fetchit path relative to APPDATA
$jsonFilePath = Join-Path -Path $appDataPath -ChildPath "@fetchit\client\native-message-host.chrome.json"
 
# Define the registry key path
$regKeyPath = "HKCU:\Software\Google\Chrome\NativeMessagingHosts\com.schultztechnology.fetchit"
 
# Check if the registry key exists, if not, create it
if (-not (Test-Path $regKeyPath)) {
    New-Item -Path $regKeyPath -Force | Out-Null
    Write-Host "Created registry key: $regKeyPath"
} else {
    Write-Host "Registry key already exists: $regKeyPath"
}
 
# Set the default (unnamed) value of the registry key
Set-ItemProperty -LiteralPath $regKeyPath -Name "(Default)" -Value $jsonFilePath -Force
Write-Host "Set registry value for $regKeyPath to: $jsonFilePath"
 
Write-Host "Registry setup complete using %APPDATA%."
