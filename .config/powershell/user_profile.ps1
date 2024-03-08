# # Prompt
# Import-Module posh-git

# # Load oh my posh
# function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }
# $PROMT_CONFIG = Join-Path (Get-ScriptDirectory) 'igmtdev.omp.json'
# oh-my-posh init pwsh --config $PROMT_CONFIG | Invoke-Expression

# Prompt
Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\igmtdev.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# Alias
Set-Alias ll ls # list
Set-Alias g git # git
Set-Alias clr clear

# git clone
function get-gitclone { git clone $args[0] }
Set-Alias -Name gcl -Value get-gitclone

# git branch --show-current
function get-gitbranch-show-current { git branch --show-current }
Set-Alias -Name gbsc -Value get-gitbranch-show-current

# git checkout
function get-gitcheckout { git checkout $args[0] }
Set-Alias -Name gco -Value get-gitcheckout

# git checkout -b
function get-gitcheckout-b { git checkout -b $args[0] }
Set-Alias -Name gcb -Value get-gitcheckout-b

# git pull
function get-gitpull { git pull }
Set-Alias -Name gpl -Value get-gitpull

# git fetch
function get-gitfetch { git fetch }
Set-Alias -Name gf -Value get-gitfetch

# git status
function get-gitstatus { git status }
Set-Alias -Name gs -Value get-gitstatus

# Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
# Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Terminal Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
