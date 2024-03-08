1. Install [Scoop](https://scoop.sh/#/):
```shell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

2. Install necessaries dependencies:
```shell
scoop install curl sudo jq
```

3. Install [Git](https://git-scm.com/download/win):
```
winget install --id Git.Git -e --source winget
```

4. Create a custom **User Profile** for powershell:
```shell
code .config/powersell/user_profile.ps1

// or

nvim .config/powershell/user_profile.ps1

// or

nano .config/powershell/user_profile.ps1
```

```ps1
# Alias
Set-Alias ll ls
Set-Alias g git
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
```

5. Add that custom user profile to main powershell profile:
```shell
code $PROFILE.CurrentUserCurrentHost

// or

nvim $PROFILE.CurrentUserCurrentHost

// or

nano $PROFILE.CurrentUserCurrentHost
```

```ps1
. $env:USERPROFILE\.config\powershell\user_profile.ps1
```
