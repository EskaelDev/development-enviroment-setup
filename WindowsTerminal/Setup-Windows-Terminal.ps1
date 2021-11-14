# Install cross platform version of Powershell
winget install --id microsoft.powershell

# Install oh-my-posh
winget install JanDeDobbeleer.OhMyPosh

# Copy posh theme to oh-my-posh themes
Copy-Item .\WindowsTerminal\eskael-posh-v1.json $env:userprofile\AppData\Local\Programs\oh-my-posh\themes\eskael-posh-v1.json -Force

# Install Terminal icons
Install-Module -Name Terminal-Icons -Repository PSGallery -Force

# Install PS-Readline
# 'Set-PSReadLineOption -PredictionViewStyle ListView' requires this version
Install-Module -Name PSReadLine -RequiredVersion 2.2.0-beta1 -AllowPrerelease

# Install Z
Install-Module z -AllowClobber

# Set default path for terminal
$SetDefaultPath = "$PSScriptRoot\Set-Default-Path.ps1"
&$SetDefaultPath

# Copy settings to Windows Terminal directory
Copy-Item "$PSScriptRoot\settings.json" $env:userprofile\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json -Force
