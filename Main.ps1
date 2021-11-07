function Ask
{
    param (
        $Module
    )
    do
    {
        $Answer = Read-Host "Do you want to ${Module}? Yes(y) No(n)"
        $Answer = $Answer.ToLower()
        if ($Answer -eq "y")
        {
            return 1
        }
        else
        {
            if ($Answer -eq "n")
            {
                return 0
            }
        }
    } while ($Answer -ne "y" -or $Answer -ne "n")
    return 0
}
Clear-Host
$FiraCode = Ask "install Fira Code Font"
$WindowsTerminal = Ask "install and configure Windows Terminal"
$VSC = Ask "configure Visual Studio Code"
$DeskPins = Ask "download and install Desk Pins"

if ($FiraCode -eq 1)
{
    # Install Fira Code Nerd Font
    try
    {
        $PSScriptRoot 
        $InstallFonts = $PSScriptRoot + "\Font\Install-Fonts.ps1"
        &$InstallFonts
    }
    catch
    {
        Write-Host "Error: " -ForegroundColor Red -NoNewline
        Write-Host "Fira Code not installed"
    }
    
}

if ($WindowsTerminal -eq 1)
{
    # Setup Windows Terminal
    try
    {
        $PSScriptRoot 
        $InstallWt = $PSScriptRoot + "WindowsTerminal\Setup-Windows-Terminal.ps1"
        &$InstallWt
    }
    catch
    {
        Write-Host "Error: " -ForegroundColor Red -NoNewline
        Write-Host "Windows Terminal not configured"
    }
}

if ($VSC -eq 1)
{
    # Install Visual Studio Code
    try
    {
        $PSScriptRoot 
        $InstallVSC = $PSScriptRoot + "VisualStudioCode\Setup-Visual-Studio-Code.ps1"
        &$InstallVSC
    }
    catch
    {
        Write-Host "Error: " -ForegroundColor Red -NoNewline
        Write-Host "Visual Studio Code not configured"
    }
}
if ($DeskPins -eq 1)
{
    curl "https://efotinis.neocities.org/downloads/DeskPins-1.32-setup.exe" -o "DeskPins-1.32-setup.exe"
    try
    {
        Start-Process -FilePath "DeskPins-1.32-setup.exe" -ArgumentList "/S"
    }
    catch
    {
        Write-Host "Error: " -ForegroundColor Red -NoNewline
        Write-Host "Deskpins not installed"
    }
}
