**1. Install [Scoop](https://scoop.sh/#/):**
```shell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

**2. Install necessaries dependencies:**
```shell
scoop install curl sudo jq
```

**3. Install [Git](https://git-scm.com/download/win):**
```
winget install --id Git.Git -e --source winget
```

**4. Create a custom `User Profile` for powershell:**
```shell
code .config/powersell/user_profile.ps1

// or

nvim .config/powershell/user_profile.ps1

// or

nano .config/powershell/user_profile.ps1
```

**5. Add aliase:**
```ps1
# Alias
Set-Alias ll ls # list
Set-Alias g git # git
Set-Alias clr clear

# git clone
function get-gitclone { git clone $args[0] }
Set-Alias -Name gcl -Value get-gitclone

# git checkout
function get-gitcheckout { git checkout }
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

**6. Link the custom user profile to main powershell profile:**
```shell
code $PROFILE.CurrentUserCurrentHost

// or

nvim $PROFILE.CurrentUserCurrentHost

// or

nano $PROFILE.CurrentUserCurrentHost
```

```ps1

// Initialize user_profile.ps1
. $env:USERPROFILE\.config\powershell\user_profile.ps1
```

**7. Install [Oh My Posh](https://ohmyposh.dev/docs/installation/windows)**
```shell
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
```

```ps1
// user_profile.ps1

# Prompt
Import-Module posh-git

// Initialize Oh My Posh Customization
// (.\igmtdev.omp.json) located on (C:\Users\(YOUR USERNAME)\.config\powershell\)
// You can copy a themes on (Oh My Posh) website
$omp_config = Join-Path $PSScriptRoot ".\igmtdev.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
```

**8. Install [Terminal Icons](https://github.com/devblackops/Terminal-Icons?tab=readme-ov-file#installation):**
```shell
Install-Module -Name Terminal-Icons -Repository PSGallery
```

```ps1
// user_profile.ps1

// Initialize Terminal Icons
# Terminal Icons
Import-Module -Name Terminal-Icons
```

**9. Install [Z - Directory Jumper](https://www.powershellgallery.com/packages/z/1.1.13):**
```shell
Install-Module -Name z
```

**10. Install [PSReadLine](https://github.com/PowerShell/PSReadLine?tab=readme-ov-file#installation):**
```shell
Install-Module PSReadLine -AllowPrerelease -Force
```

```ps1
// user_profile.ps1

// Initialize PSReadLine
# PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
```
