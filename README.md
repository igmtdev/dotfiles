# Windows Powershell Customize

![powershell](https://github.com/igmtdev/dotfiles/assets/161505752/0bfc8ab6-374e-48e9-b7f4-995d3cd799dc)

![powershell 2](https://github.com/igmtdev/dotfiles/assets/161505752/66082bb5-2504-4433-8dd4-61c56f063cc3)

# Setup
**1. Install [Scoop](https://scoop.sh/#/):**
```shell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

**2. Install [Git](https://git-scm.com/download/win):**
```
winget install --id Git.Git -e --source winget
```

**3. Create a custom `User Profile` for powershell:**
```shell
code .config/powersell/user_profile.ps1

// or

nvim .config/powershell/user_profile.ps1

// or

nano .config/powershell/user_profile.ps1
```

```ps1
// user_profile.ps1

# Alias
Set-Alias ll ls # list
Set-Alias g git # git
Set-Alias clr clear

# git clone
function get-gitclone { git clone $args[0] }
Set-Alias -Name gcl -Value get-gitclone

# git add .
function get-gitadd-all { git add . }
Set-Alias -Name gaa -Value get-gitadd-all

# git add
function get-gitadd { git add $args[0] }
Set-Alias -Name ga -Value get-gitadd

# git commit -m
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
```

**4. Link the custom user profile to main powershell profile:**
```shell
code $PROFILE.CurrentUserCurrentHost

// or

nvim $PROFILE.CurrentUserCurrentHost

// or

nano $PROFILE.CurrentUserCurrentHost
```

```ps1

# Initialize user_profile.ps1
. $env:USERPROFILE\.config\powershell\user_profile.ps1
```

**5. Install [Oh My Posh](https://ohmyposh.dev/docs/installation/windows)**
```shell
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
```

```ps1
// user_profile.ps1

# Prompt
Import-Module posh-git

# Initialize Oh My Posh Customization
# (.\igmtdev.omp.json) located on (C:\Users\(YOUR USERNAME)\.config\powershell\)
# You can copy a themes on (Oh My Posh) website
$omp_config = Join-Path $PSScriptRoot ".\igmtdev.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
```

**6. Install [Terminal Icons](https://github.com/devblackops/Terminal-Icons?tab=readme-ov-file#installation):**
```shell
Install-Module -Name Terminal-Icons -Repository PSGallery
```

```ps1
// user_profile.ps1

# Initialize Terminal Icons
# Terminal Icons
Import-Module -Name Terminal-Icons
```

**7. Install [Z - Directory Jumper](https://www.powershellgallery.com/packages/z/1.1.13):**
```shell
Install-Module -Name z
```

**8. Install [PSReadLine](https://github.com/PowerShell/PSReadLine?tab=readme-ov-file#installation):**
```shell
Install-Module PSReadLine -AllowPrerelease -Force
```

```ps1
// user_profile.ps1

# Initialize PSReadLine
# PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
```

# Troubleshoot
**1. [Import Module failed because of latest (Powershell 7.4.1) with a difference path of module](https://www.sharepointdiary.com/2020/01/import-module-specified-module-not-loaded-because-no-valid-module-file-found-in-any-module-directory.html)**
