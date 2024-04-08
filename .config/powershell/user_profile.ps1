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

# nest generate resource (name) --no-spec
function get-nest-generate-resource { nest generate resource $args --no-spec }
Set-Alias -Name ngr -Value get-nest-generate-resource

# nest generate module (name)
function get-nest-generate-module { nest generate module $args }
Set-Alias -Name ngm -Value get-nest-generate-module

# nest generate service (name)
function get-nest-generate-service { nest generate service $args --no-spec }
Set-Alias -Name ngs -Value get-nest-generate-service

# nest generate controller (name)
function get-nest-generate-controller { nest generate controller $args --no-spec }
Set-Alias -Name ngc -Value get-nest-generate-controller

# nest generate middleware (name)
function get-nest-generate-middleware { nest generate middleware $args }
Set-Alias -Name ngmw -Value get-nest-generate-middleware

# nest generate guard (name)
function get-nest-generate-guard { nest generate guard $args }
Set-Alias -Name ngg -Value get-nest-generate-guard

# nest generate filter
function get-nest-generate-filter { nest generate filter $args }
Set-Alias -Name ngf -Value get-nest-generate-filter

# nest generate decorator
function get-nest-generate-decorator { nest generate decorator $args }
Set-Alias -Name ngf -Value get-nest-generate-decorator

#! PRISMA
# npx prisma init
function get-npx-prisma-init { npx prisma init }
Set-Alias -Name npi -Value get-npx-prisma-init

# npx prisma migrate dev --name (name)
function get-npx-prisma-migrate-dev-name { npx prisma migrate dev --name $args }
Set-Alias -Name npmd -Value get-npx-prisma-migrate-dev-name

# npx prisma generate
function get-npx-prisma-generate { npx prisma generate }
Set-Alias -Name npg -Value get-npx-prisma-generate

# npx prisma studio
function get-npx-prisma-studio { npx prisma studio }
Set-Alias -Name nps -Value get-npx-prisma-studio

# npx prisma db seed
function get-npx-prisma-db-seed { npx prisma db seed }
Set-Alias -Name npdbs -Value get-npx-prisma-db-seed

#! PNPM
# pnpm create next-app (name) --ts --eslint --tailwind --app --src-dir --import-alias "@/*" --use-pnpm
function get-pnpm-create-next-app { pnpm create next-app $args[0] --ts --eslint --tailwind --app --src-dir --import-alias "@/*" --use-pnpm }
Set-Alias -Name pcna -Value get-pnpm-create-next-app

# pnpm install
function get-pnpm-install-all { pnpm install }
Set-Alias -Name pil -Value get-pnpm-install-all

# pnpm update
function get-pnpm-update { pnpm update }
Set-Alias -Name pu -Value get-pnpm-update

# pnpm install (name)
function get-pnpm-install { pnpm add $args }
Set-Alias -Name pia -Value get-pnpm-install

# pnpm install -D (name)
function get-pnpm-install-d { pnpm add -D $args }
Set-Alias -Name pid -Value get-pnpm-install-d

# pnpm remove (name)
function get-pnpm-remove { pnpm remove $args }
Set-Alias -Name pr -Value get-pnpm-remove

# pnpm run dev
function get-pnpm-run-dev { pnpm run dev }
Set-Alias -Name prd -Value get-pnpm-run-dev

# pnpm run start:dev
function get-pnpm-run-start-dev { pnpm run start:dev }
Set-Alias -Name prsd -Value get-pnpm-run-start-dev

# pnpm run lint
function get-pnpm-run-lint { pnpm run lint }
Set-Alias -Name prl -Value get-pnpm-run-lint

# pnpm run format
function get-pnpm-run-format { pnpm run format }
Set-Alias -Name prf -Value get-pnpm-run-format

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

# npx create-next-app@latest (name) --ts --eslint --tailwind --app --src-dir --import-alias "@/*" --use-npm
function get-npm-create-next-app { npx create-next-app@latest $args[0] --ts --eslint --tailwind --app --src-dir --import-alias "@/*" --use-npm }
Set-Alias -Name ncna -Value get-npm-create-next-app

# npm install
function get-npm-install-all { npm install }
Set-Alias -Name nil -Value get-npm-install-all

# npm update
function get-npm-update { npm update }
Set-Alias -Name nu -Value get-npm-update

# npm install (name)
function get-npm-install { npm install $args }
Set-Alias -Name nia -Value get-npm-install

# npm install -D (name)
function get-npm-install-d { npm install -D $args }
Set-Alias -Name nid -Value get-npm-install-d

# npm uninstall (name)
function get-npm-uninstall { npm uninstall $args }
Set-Alias -Name nu -Value get-npm-uninstall

# npm run dev
function get-npm-run-dev { npm run dev }
Set-Alias -Name nrd -Value get-npm-run-dev

# npm run start:dev
function get-npm-run-start-dev { npm run start:dev }
Set-Alias -Name nrsd -Value get-npm-run-start-dev

# npm run lint
function get-npm-run-lint { npm run lint }
Set-Alias -Name nrl -Value get-nnpm-run-lint

# npm run format
function get-npm-run-format { npm run format }
Set-Alias -Name prf -Value get-npm-run-format

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
