# # Prompt
# Import-Module posh-git

# # Load oh my posh
# function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }
# $PROMT_CONFIG = Join-Path (Get-ScriptDirectory) 'igmtdev.omp.json'
# oh-my-posh init pwsh --config $PROMT_CONFIG | Invoke-Expression

# Prompt
# Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\igmtdev.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# Alias
Set-Alias ll ls # list
Set-Alias g git # git
Set-Alias clr clear

#! NEST
# nest new (name)
function get-nest-new { nest new $args }
Set-Alias -Name nn -Value get-nest-new

# nest generate module (name)
function get-nest-generate-module { nest generate module $args }
Set-Alias -Name ngm -Value get-nest-generate-module

# nest generate service (name)
function get-nest-generate-service { nest generate service $args }
Set-Alias -Name ngs -Value get-nest-generate-service

# nest generate controller (name)
function get-nest-generate-controllers { nest generate controller $args }
Set-Alias -Name ngc -Value get-nest-generate-controller

#! PNPM
# pnpm create next-app (name) --ts --eslint --no-tailwind --app --no-src-dir --import-alias "@/*" --use-pnpm
function get-pnpm-create-next-app { pnpm create next-app $args[0] --ts --eslint --no-tailwind --app --no-src-dir --import-alias "@/*" --use-pnpm }
Set-Alias -Name pcna -Value get-pnpm-create-next-app

# pnpm install
function get-pnpm-install-all { pnpm install }
Set-Alias -Name pia -Value get-pnpm-install-all

# pnpm update
function get-pnpm-update { pnpm update }
Set-Alias -Name pu -Value get-pnpm-update

# pnpm install (name)
function get-pnpm-install { pnpm install $args }
Set-Alias -Name pil -Value get-pnpm-install

# pnpm install -D (name)
function get-pnpm-install-d { pnpm install -D $args }
Set-Alias -Name pid -Value get-pnpm-install-d

# pnpm run dev
function get-pnpm-run-dev { pnpm run dev }
Set-Alias -Name prd -Value get-pnpm-run-dev

# pnpm run start:dev
function get-pnpm-run-start-dev { pnpm run start:dev }
Set-Alias -Name prsd -Value get-pnpm-run-start-dev

# pnpm run lint
function get-pnpm-run-lint { pnpm run lint }
Set-Alias -Name prl -Value get-pnpm-run-lint

# pnpm run build
function get-pnpm-run-build { pnpm run build }
Set-Alias -Name prb -Value get-pnpm-run-build

# pnpm run start
function get-pnpm-run-start { pnpm run start }
Set-Alias -Name prs -Value get-pnpm-run-start

#! NPM
# npm init
function get-npm-init { npm init }
Set-Alias -Name nii -Value get-npm-init

# npx tsc --init
function get-npx-tsc-init { npx tsc --init }
Set-Alias -Name ntsci -Value get-npx-tsc-init

# npx create-next-app@latest (name) --ts --eslint --no-tailwind --app --no-src-dir --import-alias "@/*" --use-pnpm
function get-npm-create-next-app { npx create-next-app@latest $args[0] --ts --eslint --no-tailwind --app --no-src-dir --import-alias "@/*" --use-npm }
Set-Alias -Name ncna -Value get-npm-create-next-app

# npm install
function get-npm-install-all { npm install }
Set-Alias -Name nia -Value get-npm-install-all

# npm update
function get-npm-update { npm update }
Set-Alias -Name nu -Value get-npm-update

# npm install (name)
function get-npm-install { npm install $args }
Set-Alias -Name nil -Value get-npm-install

# pnpm install -D (name)
function get-npm-install-d { npm install -D $args }
Set-Alias -Name nid -Value get-npm-install-d

# npm run dev
function get-npm-run-dev { npm run dev }
Set-Alias -Name nrd -Value get-npm-run-dev

# npm run start:dev
function get-npm-run-start-dev { npm run start:dev }
Set-Alias -Name nrsd -Value get-npm-run-start-dev

# npm run lint
function get-npm-run-lint { npm run lint }
Set-Alias -Name nrl -Value get-nnpm-run-lint

# npm run build
function get-npm-run-build { npm run build }
Set-Alias -Name nrb -Value get-npm-run-build

# npm run start
function get-npm-run-start { npm run start }
Set-Alias -Name nrs -Value get-npm-run-start

#! GIT
# git clone (name)
function get-gitclone { git clone $args }
Set-Alias -Name gcl -Value get-gitclone

# git add .
function get-gitadd-all { git add . }
Set-Alias -Name gaa -Value get-gitadd-all

# git add (name)
function get-gitadd { git add $args }
Set-Alias -Name ga -Value get-gitadd

# git commit -m "name"
function get-gitcommit { git commit -m $args }
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
function get-gitcheckout { git checkout $args }
Set-Alias -Name gco -Value get-gitcheckout

# git checkout -b (name)
function get-gitcheckout-b { git checkout -b $args }
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
function get-gitbranch-m { git branch -m $args }
Set-Alias -Name gbm -Value get-gitbranch-m

# Terminal Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
