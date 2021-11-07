# Install cross platform version of Powershell
winget install --id microsoft.powershell

# Download Fira Code Nerd Font
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip

# Install oh-my-posh
winget install JanDeDobbeleer.OhMyPosh

# Copy posh theme to oh-my-posh themes
Copy-Item ./eskael-posh-v1.json AppData/Local/Programs/oh-my-posh/themes/eskael-posh-v1.json

# Install Terminal icons
Install-Module -Name Terminal-Icons -Repository PSGallery -Force

# Install PS-Readline
# For Set-PSReadLineOption -PredictionViewStyle ListView requires this version
Install-Module -Name PSReadLine -RequiredVersion 2.2.0-beta1 -AllowPrerelease

# Install Z
Install-Module z -AllowClobber