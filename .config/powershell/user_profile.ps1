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

# git clone (name)
function get-gitclone { git clone $args[0] }
Set-Alias -Name gcl -Value get-gitclone

# git add .
function get-gitadd-all { git add . }
Set-Alias -Name gaa -Value get-gitadd-all

# git add (name)
function get-gitadd { git add $args[0] }
Set-Alias -Name ga -Value get-gitadd

# git commit -m "name"
function get-gitcommit { git commit -m $args[0] }
Set-Alias -Name gcmt -Value get-gitcommit

# git push
function get-gitpush { git push }
Set-Alias -Name gpsh -Value get-gitpush

# git branch --show-current
function get-gitbranch-show-current { git branch --show-current }
Set-Alias -Name gbsc -Value get-gitbranch-show-current

# git branch -a
function get-gitbranch-a { git branch -a }
Set-Alias -Name gba -Value get-gitbranch-a

# git checkout (name)
function get-gitcheckout { git checkout $args[0] }
Set-Alias -Name gco -Value get-gitcheckout

# git checkout -b (name)
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

# git branch -m (name)
function get-gitbranch-m { git branch -m $args[0] }
Set-Alias -Name gbm -Value get-gitbranch-m

# Terminal Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
