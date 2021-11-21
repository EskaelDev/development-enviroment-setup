function GenerateForm {

    [reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
    [reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
    
    $form1 = New-Object System.Windows.Forms.Form
    $button1 = New-Object System.Windows.Forms.Button
    $listBox1 = New-Object System.Windows.Forms.ListBox
    $checkBox3 = New-Object System.Windows.Forms.CheckBox
    $checkBox2 = New-Object System.Windows.Forms.CheckBox
    $checkBox1 = New-Object System.Windows.Forms.CheckBox
    $InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
    
    $b1= $false
    $b2= $false
    $b3= $false
    
    #----------------------------------------------
    #Generated Event Script Blocks
    #----------------------------------------------
    
    $handler_button1_Click= 
    {
        $listBox1.Items.Clear();    
    
        if ($checkBox1.Checked)     {  $listBox1.Items.Add( "Checkbox 1 is checked"  ) }
    
        if ($checkBox2.Checked)    {  $listBox1.Items.Add( "Checkbox 2 is checked"  ) }
    
        if ($checkBox3.Checked)    {  $listBox1.Items.Add( "Checkbox 3 is checked"  ) }
    
        if ( !$checkBox1.Checked -and !$checkBox2.Checked -and !$checkBox3.Checked ) {   $listBox1.Items.Add("No CheckBox selected....")} 
    }
    
    $OnLoadForm_StateCorrection=
    {#Correct the initial state of the form to prevent the .Net maximized form issue
        $form1.WindowState = $InitialFormWindowState
    }
    
    #----------------------------------------------
    #region Generated Form Code
    $form1.Text = "Primal Form"
    $form1.Name = "form1"
    $form1.DataBindings.DefaultDataSourceUpdateMode = 0
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 450
    $System_Drawing_Size.Height = 236
    $form1.ClientSize = $System_Drawing_Size
    
    $button1.TabIndex = 4
    $button1.Name = "button1"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 75
    $System_Drawing_Size.Height = 23
    $button1.Size = $System_Drawing_Size
    $button1.UseVisualStyleBackColor = $True
    
    $button1.Text = "Run Script"
    
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 156
    $button1.Location = $System_Drawing_Point
    $button1.DataBindings.DefaultDataSourceUpdateMode = 0
    $button1.add_Click($handler_button1_Click)
    
    $form1.Controls.Add($button1)
    
    $listBox1.FormattingEnabled = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 301
    $System_Drawing_Size.Height = 212
    $listBox1.Size = $System_Drawing_Size
    $listBox1.DataBindings.DefaultDataSourceUpdateMode = 0
    $listBox1.Name = "listBox1"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 137
    $System_Drawing_Point.Y = 13
    $listBox1.Location = $System_Drawing_Point
    $listBox1.TabIndex = 3
    
    $form1.Controls.Add($listBox1)
    
    
    $checkBox3.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox3.Size = $System_Drawing_Size
    $checkBox3.TabIndex = 2
    $checkBox3.Text = "CheckBox 3"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 75
    $checkBox3.Location = $System_Drawing_Point
    $checkBox3.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkBox3.Name = "checkBox3"
    
    $form1.Controls.Add($checkBox3)
    
    
    $checkBox2.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 24
    $checkBox2.Size = $System_Drawing_Size
    $checkBox2.TabIndex = 1
    $checkBox2.Text = "CheckBox 2"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 44
    $checkBox2.Location = $System_Drawing_Point
    $checkBox2.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkBox2.Name = "checkBox2"
    
    $form1.Controls.Add($checkBox2)
    
    
    
        $checkBox1.UseVisualStyleBackColor = $True
        $System_Drawing_Size = New-Object System.Drawing.Size
        $System_Drawing_Size.Width = 104
        $System_Drawing_Size.Height = 24
        $checkBox1.Size = $System_Drawing_Size
        $checkBox1.TabIndex = 0
        $checkBox1.Text = "CheckBox 1"
        $System_Drawing_Point = New-Object System.Drawing.Point
        $System_Drawing_Point.X = 27
        $System_Drawing_Point.Y = 13
        $checkBox1.Location = $System_Drawing_Point
        $checkBox1.DataBindings.DefaultDataSourceUpdateMode = 0
        $checkBox1.Name = "checkBox1"
    
    $form1.Controls.Add($checkBox1)
    
    
    #Save the initial state of the form
    $InitialFormWindowState = $form1.WindowState
    #Init the OnLoad event to correct the initial state of the form
    $form1.add_Load($OnLoadForm_StateCorrection)
    #Show the Form
    $form1.ShowDialog()| Out-Null
    
    } #End Function
    
    #Call the Function
    GenerateForm
# function Ask
# {
#     param (
#         $Module
#     )
#     do
#     {
#         $Answer = Read-Host "Do you want to ${Module}? Yes(y) No(n)"
#         $Answer = $Answer.ToLower()
#         if ($Answer -eq "y")
#         {
#             return 1
#         }
#         else
#         {
#             if ($Answer -eq "n")
#             {
#                 return 0
#             }
#         }
#     } while ($Answer -ne "y" -or $Answer -ne "n")
#     return 0
# }
# Clear-Host
# $git = Ask "install Git"
# $FiraCode = Ask "install Fira Code Font"
# $WindowsTerminal = Ask "install and configure Windows Terminal"
# $VSC = Ask "configure Visual Studio Code"
# $DeskPins = Ask "download and install Desk Pins"

# if ($FiraCode -eq 1)
# {
#     # Install Fira Code Nerd Font
#     try
#     {
#         curl "https://github.com/git-for-windows/git/releases/download/v2.33.1.windows.1/Git-2.33.1-64-bit.exe" -o git-install.exe
#         &git-install.exe
#     }
#     catch
#     {
#         Write-Host "Error: " -ForegroundColor Red -NoNewline
#         Write-Host "Fira Code not installed"
#     }
    
# }

# if ($Git -eq 1)
# {
#     # Install Fira Code Nerd Font
#     try
#     {
#         curl 
#         $PSScriptRoot 
#         $InstallFonts = $PSScriptRoot + "\Font\Install-Fonts.ps1"
#         &$InstallFonts
#     }
#     catch
#     {
#         Write-Host "Error: " -ForegroundColor Red -NoNewline
#         Write-Host "Git not installed"
#     }
    
# }
# if ($WindowsTerminal -eq 1)
# {
#     # Setup Windows Terminal
#     try
#     {
#         $PSScriptRoot 
#         $InstallWt = $PSScriptRoot + "WindowsTerminal\Setup-Windows-Terminal.ps1"
#         &$InstallWt
#     }
#     catch
#     {
#         Write-Host "Error: " -ForegroundColor Red -NoNewline
#         Write-Host "Windows Terminal not configured"
#     }
# }

# if ($VSC -eq 1)
# {
#     # Install Visual Studio Code
#     try
#     {
#         $PSScriptRoot 
#         $InstallVSC = $PSScriptRoot + "VisualStudioCode\Setup-Visual-Studio-Code.ps1"
#         &$InstallVSC
#     }
#     catch
#     {
#         Write-Host "Error: " -ForegroundColor Red -NoNewline
#         Write-Host "Visual Studio Code not configured"
#     }
# }
# if ($DeskPins -eq 1)
# {
#     curl "https://efotinis.neocities.org/downloads/DeskPins-1.32-setup.exe" -o "DeskPins-1.32-setup.exe"
#     try
#     {
#         Start-Process -FilePath "DeskPins-1.32-setup.exe" -ArgumentList "/S"
#     }
#     catch
#     {
#         Write-Host "Error: " -ForegroundColor Red -NoNewline
#         Write-Host "Deskpins not installed"
#     }
# }
