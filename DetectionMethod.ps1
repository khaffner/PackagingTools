$AppName = "7*Zip*"
$AppVersion = "18.5.0.0"
Get-Package -Name $AppName -MinimumVersion $AppVersion -ProviderName msi,programs -ErrorAction SilentlyContinue