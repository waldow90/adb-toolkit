@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set action=99

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select a manufacturer and Press ENTER:
echo.
echo.
echo 1) Acer
echo.
echo 2) Amazon
echo.
echo 3) Asus
echo.
echo 4) Dell
echo.
echo 5) Foxconn
echo.
echo 6) Google
echo.
echo 7) HiSense
echo.
echo 8) HP
echo.
echo 9) HTC
echo.
echo 10) Kyocera
echo.
echo 11) LG
echo.
echo 12) Motorola
echo.
echo.
%cocolor% 0d
echo N) Go To Next Page
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto end
if %action%==r goto end

:: Check Next Page flag
if %action%==N goto main2
if %action%==n goto main2


:: Reject any number higher than the highest menu item
if %action% gtr 12 goto reset

::if %action%==1 call "scripts\firmware_flashing\acer.cmd"

::if %action%==2 call "scripts\firmware_flashing\amazon.cmd"

::if %action%==3 call "scripts\firmware_flashing\asus.cmd"

::if %action%==4 call "scripts\firmware_flashing\dell.cmd"

::if %action%==5 call "scripts\firmware_flashing\foxconn.cmd"

::if %action%==6 call "scripts\firmware_flashing\google.cmd"

::if %action%==7 call "scripts\firmware_flashing\hisense.cmd"

::if %action%==8 call "scripts\firmware_flashing\hp.cmd"

::if %action%==9 call "scripts\firmware_flashing\htc.cmd"

::if %action%==10 call "scripts\firmware_flashing\kyocera.cmd"

::if %action%==11 call "scripts\firmware_flashing\lg.cmd"

::if %action%==12 call "scripts\firmware_flashing\motorola.cmd"




:: Temp fix until code is added

if %action%==1 explorer.exe "scripts\firmware_flashing\acer\"

if %action%==2 explorer.exe "scripts\firmware_flashing\amazon\"

if %action%==3 explorer.exe "scripts\firmware_flashing\asus\"

if %action%==4 explorer.exe "scripts\firmware_flashing\dell\"

if %action%==5 explorer.exe "scripts\firmware_flashing\foxconn\"

if %action%==6 explorer.exe "scripts\firmware_flashing\google\"

if %action%==7 explorer.exe "scripts\firmware_flashing\hisense\"

if %action%==8 explorer.exe "scripts\firmware_flashing\hp\"

if %action%==9 explorer.exe "scripts\firmware_flashing\htc\"

if %action%==10 explorer.exe "scripts\firmware_flashing\kyocera\"

if %action%==11 explorer.exe "scripts\firmware_flashing\lg\"

if %action%==12 explorer.exe "scripts\firmware_flashing\motorola\"


goto reset



:main2
set action=99
%showbanner%
echo.
echo.
echo Select a manufacturer and Press ENTER:
echo.
echo.
echo 13) Pegatron
echo.
echo 14) Samsung
echo.
echo 15) Sony
echo.
echo 16) Teleepoch
echo.
echo 17) Velocity Micro
echo.
echo 18) ZTE
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto main
if %action%==r goto main

:: Reject any number lower than the lowest menu item
if %action% lss 13 goto main2

:: Reject any number higher than the highest menu item
if %action% gtr 18 goto main2



::if %action%==13 call "scripts\firmware_flashing\pegatron.cmd"

::if %action%==14 call "scripts\firmware_flashing\samsung.cmd"

::if %action%==15 call "scripts\firmware_flashing\sony.cmd"

::if %action%==16 call "scripts\firmware_flashing\teleepoch.cmd"

::if %action%==17 call "scripts\firmware_flashing\zte.cmd"





:: Temp fix until code is added


if %action%==13 explorer.exe "scripts\firmware_flashing\pegatron\"

if %action%==14 explorer.exe "scripts\firmware_flashing\samsung\"

if %action%==15 explorer.exe "scripts\firmware_flashing\sony\"

if %action%==16 explorer.exe "scripts\firmware_flashing\teleepoch\"

if %action%==17 explorer.exe "scripts\firmware_flashing\velocitymicro\"

if %action%==18 explorer.exe "scripts\firmware_flashing\zte\"


::set pagetwo=1


goto main2


:end




