Write-Host "Default for terminal is: " -NoNewline
Write-Host $env:userprofile.ToString()  -ForegroundColor Yellow
$Change = ""
function Update-Text
{
    param (
        $DefaultPath
    )
    return "`n`$pth = Get-Location
`$pth = `$pth.ToString()
if (`$pth -eq `$env:userprofile)
{
    Set-Location $DefaultPath
}
Clear-Host"
}

do
{
    $Change = Read-Host "Do you wanna change the deafault path? Yes(y) No(n)"
    $NewPath = $env:userprofile
    if ($Change -eq "y" -or $Change -eq "Y")
    {
        Write-Host "Please provide new default path. Remember about " -NoNewline
        Write-Host "case-sensitivity!" -ForegroundColor Red
        $NewPath = Read-Host 
    }
    $ToAppend = Update-Text $NewPath
    $PsProfileLocalFile = 'Microsoft.PowerShell_profile.ps1'
    $PsProfileFile = $env:userprofile + "\Documents\PowerShell\Microsoft.PowerShell_profile.ps1"
    Copy-Item $PsProfileLocalFile $PsProfileFile -Force
    Add-Content $PsProfileFile $ToAppend

    Write-Host "`nDefault path set to: $NewPath" -ForegroundColor Yellow
    return
} while ($Change -ne "y" -or $Change -ne "Y" -or $Change -ne "n" -or $Change -ne "N")

