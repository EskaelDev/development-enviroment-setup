function Ask
{
    param (
        $Module
    )
    do
    {
        $Answer = Read-Host "Do you want to install/configure $Module? Yes(y) No(n)"
        $Answer = $Answer.ToLower()
        if ($Answer -eq "y")
        {
            return true
        }
        else
        {
            if ($Answer -eq "n")
            {
                return false
            }
        }
    } while ($Answer -ne "y" -or $Answer -ne "n")
    return false
}
Clear-Host
$FiraCode = Ask "Fira Code Font"
$WindowsTerminal = Ask "Windows Terminal"
$VSC = Ask "Visual Studio Code"
$DeskPins = Ask "Desk Pins"

if ($FiraCode)
{
    # Install Fira Code Nerd Font
    $PSScriptRoot 
    $InstallFonts = $PSScriptRoot + "\Font\Install-Fonts.ps1"
    &$InstallFonts
}

if ($WindowsTerminal)
{
    # Setup Windows Terminal
    $PSScriptRoot 
    $InstallWt = $PSScriptRoot + "WindowsTerminal\Setup-Windows-Terminal.ps1"
    &$InstallWt
}

if ($VSC)
{
    # Install Visual Studio Code
    $PSScriptRoot 
    $InstallVSC = $PSScriptRoot + "VisualStudioCode\Setup-Visual-Studio-Code.ps1"
    &$InstallVSC
}

if ($DeskPins)
{
    curl "https://efotinis.neocities.org/downloads/DeskPins-1.32-setup.exe" -o "DeskPins-1.32-setup.exe"
    Start-Process -FilePath "DeskPins-1.32-setup.exe" -ArgumentList "/S"
}