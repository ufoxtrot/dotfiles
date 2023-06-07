#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\gruvbox.omp.json" | Invoke-Expression
Invoke-Expression (&starship init powershell)

#function prompt {
 #   $dateTime = get-date -Format "dd.MM.yyyy HH:mm:ss"
 #   $currentDirectory = $(Get-Location)
 #   $UncRoot = $currentDirectory.Drive.DisplayRoot
 #   write-host "$dateTime" -NoNewline -ForegroundColor YELLOW
 #   write-host " $UncRoot" -ForegroundColor White
 #   # Convert-Path needed for pure UNC-locations
 #   write-host "$(Convert-Path $currentDirectory)>" -NoNewline -ForegroundColor GREEN
 #   return " "
#}

Import-Module PSFzf

# Set-PSReadLineOption -EditMode Emacs
# Set-PSReadLineOption -BellStyle None
# Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
# Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
# Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

$ENV:STARSHIP_CONFIG = "$HOME\Documents\Powershell\starship.toml"

## ALIASES ###
Remove-Alias ls

Set-Alias q exit

Set-Alias vim nvim
Set-Alias vi nvim

Set-Alias n notepad.exe
Set-Alias e explorer.exe

# # git
# Set-Alias addup git add -u
# Set-Alias addall git add .
# Set-Alias checkout git checkout
# Set-Alias clone git clone
# Set-Alias commit git commit -m
# Set-Alias fetch git fetch
# Set-Alias pull git pull origin
# Set-Alias push git push origin
# Set-Alias tag git tag
# Set-Alias newtag git tag -a