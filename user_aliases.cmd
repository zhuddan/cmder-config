;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
l=ls --show-control-chars -CFGNhp --color --ignore={"NTUSER.DAT*","ntuser.dat*"} $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"
pwsh=%SystemRoot%/System32/WindowsPowerShell/v1.0/powershell.exe -ExecutionPolicy Bypass -NoLogo -NoProfile -NoExit -Command "Invoke-Expression '. ''%CMDER_ROOT%/vendor/profile.ps1'''"

vs = code . && if exist package.json (if not exist node_modules (echo Detecting new dependencies, starting npm install... && ni) else (echo installed) ) else (echo No package.json found, skipping npm install)

br = bun run $1

init = npm init -y

pi = pnpm i

d = nr dev
s = nr serve
p = nr preview
l = nr local
b = nr build
es = nr eslint
pull = git pull
ss = nr script
ruoyi = nr ruoyi

dist = start dist
. = start .

p = E:\project\
zd = E:\project\zd\
star = E:\project\star\
yobaci = C: && cd %userprofile%

gc = git clone $1

gcd = git clone $1 $2


tp = git clone https://github.com/zhuddan/$1 $2

lite = git clone https://github.com/zhuddan/lite $1

dz = degit clone https://github.com/zhuddan/$1

t = tar -cvf $1.tar ./$1

