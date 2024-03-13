# Load own custom functions at startup
$env:PROFILE_HOME = "C:\Users\M310131\OneDrive - MerckGroup\Documents\PowerShell"
$OwnFunctionsDir = "$env:PROFILE_HOME\cmdlet"
Write-Host "Loading own PowerShell functions from:" -ForegroundColor Green
Write-Host "$OwnFunctionsDir" -ForegroundColor YellowWrite-Host ''

# load all functions from $OwnFunctionsDir
Get-ChildItem "$OwnFunctionsDir\*.ps1" | %{.$_}
Write-Host ''


# beautify
oh-my-posh init pwsh --config "$env:PROFILE_HOME\PoshThemes\emodipt-extend.omp.json" | Invoke-Expression

# neovide
Set-Alias neovide "C:/Users/m310131/scoop/apps/neovide/0.12.2/neovide.exe"

# lvim
Set-Alias lvim "C:\Users\M310131\.local\bin\lvim.ps1"

# lvim from neovide
Set-Alias lv "C:\Users\M310131\.local\bin\lv.ps1"

# python and alias
Set-Alias python3 "C:\Program Files\Python310\python.exe"
Set-Alias pip3 "C:\Program Files\Python310\Scripts\pip.exe"

# alias to visidata.exe
Set-Alias vd "C:\Program Files\Python310\Scripts\visidata.exe"

$env:DISPLAY = 'localhost:0'

$env:OPENAI_API_KEY = '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'

# set alias `prj` to $HOME/OneDrive - MerckGroup/Documents/Projects/
$prj = "$HOME/OneDrive - MerckGroup/Documents/Projects/"
$dsktp = "$HOME/OneDrive - MerckGroup/Desktop/"
$dlds = "$HOME/Downloads/"

function Aliyun {
  ssh root@47.243.6.189
}
