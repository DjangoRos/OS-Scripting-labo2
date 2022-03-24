Get-Date
$prosrc = 'C:\Users\Divin\aboutme\OS-Scripting-labo2\powershell-labos\labo03'
Set-Location $prosrc
git diff --quiet profile.ps1
if ( $LASTEXITCODE -eq 0){
if((Get-Item $profile).LastWriteTime -lt (Get-Item $prosrc\profile.ps1).LastWriteTime){
Copy-Item $prosrc\profile.ps1 $profile -Verbose 
.$profile}}