1.  Install Powershell 7

``` powershell
winget install --id microsoft.powershell
```

2.  Set it to default in windows terminal

3.  Download and install Fira Code Nerd Font

```powershell
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
```

3.  Install oh-my-posh
```powershell
winget install JanDeDobbeleer.OhMyPosh
```

4.  Copy `eskael-posh-v1.json` to oh-my-posh themes folder.
```
cp ./eskael-posh-v1.json AppData/Local/Programs/oh-my-posh/themes/eskael-posh-v1.json
```

5.  Edit PowerShell profile
```powershell
.code $profile
```
Paste this
```powershell
oh-my-posh --init --shell pwsh --config AppData/Local/Programs/oh-my-posh/themes/eskael-posh-v1.json | Invoke-Expression
```
<!-- run
```powershell
. $PROFILE
``` -->

6.  Install terminal icons
```
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
```
7.  Install PS-Readline
```
Install-Module -Name PSReadLine -RequiredVersion 2.2.0-beta1 -AllowPrerelease
```
8.  Install Z
```
Install-Module z -AllowClobber
```