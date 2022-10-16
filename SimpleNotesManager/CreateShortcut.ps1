Function Get-FileName-Dialog($initialDirectory)
{
    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $OpenFileDialog.initialDirectory = $initialDirectory
    $OpenFileDialog.filter = "JSON (*.json) | *.json"
    $OpenFileDialog.ShowDialog() | Out-Null
    $OpenFileDialog.filename
}

$WshShell = New-Object -comObject WScript.Shell
$StrDesktop = $WshShell.SpecialFolders("Desktop")
$Shortcut = $WshShell.CreateShortcut($StrDesktop+"\SimpleNotesManager.lnk")
#PowerShell 3+
$Shortcut.TargetPath = $PSScriptRoot + "\SimpleNotesManager.exe"
$Shortcut.Arguments = Get-FileName-Dialog $PSScriptRoot
$Shortcut.WorkingDirectory = Split-Path -Path $Shortcut.Arguments
$Shortcut.Save()
# $Shortcut | Get-Member
Read-Host "$($Shortcut.FullName) is created. Press any key to finish"