@echo off
REM USE THIS FILE IF YOU WISH TO INCLUDE IN A GRAILS 2.x PROJECT WITH GRAILSW
set "psCommand=powershell -Command "$pword = read-host 'Enter Password' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set password=%%p
 
grailsw add-proxy myproxy "--host=proxy_server" "--port=8020" "--username=%USERNAME%" "--password=%password%"
grailsw use-proxy myproxy