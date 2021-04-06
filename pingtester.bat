@echo off

color 57
echo voordat je begint raad ik je aan om dit op groot scherm te zetten zodat je alles beter kan lezen, maar dit moet niet
pause 
 
echo bedankt dat je dit gratis programma gebruikt, hiermee kun je jouw ping (hoelang het duurt voor je contact hebt gemaakt met een server)
echo als je een fout ontdekt laat me het dan zeker weten op github (A3N), ik doe er alles aan om dit zo goed mogelijk te laten werken

pause
echo schrijf hier welke internet provider je hebt (momenteen enkel ondersteund voor telenet en proximus)

set /p server=
if %server%==telenet goto telenet
if %server%==proximus goto proximus
if %server%==orange goto orange
if %server%==stop goto stop

:proximus
echo "ping testen voor proximus"
echo "ping testen voor proximus is tijdelijk nog niet heel precies maar ik werk hier nog aan
pause
echo als je een andere provider wilt testen dan geef je de naam nu in of je zegt gewoon stop
ping 
pause
set /p server2=
if %server2%==telenet goto telenet
if %server2%==orange goto orange
if %server2%==stop goto stop

:telenet 
echo "ping testen voor telenet"
ping telenet.be
pause
echo als je een andere provider wilt testen dan geef je de naam nu in of je zegt gewoon stop
set /p server2=
if %server2%==orange goto orange
if %server2%==proximus goto proximus
if %server2%==stop goto stop

:orange 
echo "ping testen voor orange"
ping orange.be
pause
echo als je een andere provider wilt testen dan geef je de naam nu in of je zegt gewoon stop
set /p server2=
if %server2%==telenet goto telenet
if %server2%==proximus goto proximus 
if %server2%==stop goto stop

:stop
echo je hebt het programma gestopt als dit niet je bedoeling was of als je opnieuw wil testen start het bestand dan gewoon weer opnieuw op 
pause 
exit

