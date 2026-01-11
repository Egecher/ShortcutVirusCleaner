@echo off
chcp 65001 >nul
title Shortcut Virus Temizleyici
color 0a

set "SELF=%~f0"
set "ROOT=%~dp0"
cd /d "%ROOT%"

for %%d in ("%ROOT%") do (
    fsutil fsinfo drivetype %%~dd | find "Removable" >nul
    if errorlevel 1 (
        echo [X] HATA: Bu program SADECE USB bellek içinde çalıştırılabilir!
        pause
        exit /b
    )
)

echo =========================================
echo  USB KISAYOL VİRÜSÜ TEMİZLEYİCİ
echo =========================================
echo.
echo [!] UYARI: Bu dosyayı SADECE USB içinde çalıştırın!
echo [!] Tüm işlemler bu sürücüde yapılacaktır.
pause

echo.
echo [+] Gizli ve sistem dosyaları görünür yapılıyor...
attrib -h -r -s /s /d *.*

echo.
echo [+] TEST MODU - SİLİNECEK DOSYALAR
echo --------------------------------------

for /r %%f in (*.lnk) do echo [LNK] %%f
for /r %%f in (*.vbs *.js *.cmd) do echo [SCR] %%f
for /r %%f in (autorun.inf) do (
    echo %%f | find /i "System Volume Information" >nul || (
        echo [AUT] %%f
    )
)

for /r %%f in (*.bat) do (
    if /i not "%%~ff"=="%SELF%" echo [BAT] %%f
)

echo --------------------------------------
echo.
choice /c YN /m "Bu dosyalar silinsin mi"
if errorlevel 2 (
    echo [!] İşlem iptal edildi
    pause
    exit /b
)

echo.
echo [+] TEMİZLİK BAŞLADI
echo.

echo [+] KISAYOL (.lnk) DOSYALARI:
for /r %%f in (*.lnk) do (
    del /f /q /s "%%f" 2>nul
)

echo.
echo [+] SCRIPT TABANLI VİRÜSLER (.vbs .js .cmd):
for /r %%f in (*.vbs *.js *.cmd) do (
    del /f /q /s "%%f" 2>nul
)

echo.
echo [+] AUTORUN DOSYALARI (autorun.inf):
for /r %%f in (autorun.inf) do (
    echo %%f | find /i "System Volume Information" >nul || (
        del /f /q /s "%%f" 2>nul
    )
)

echo.
echo [+] BAT DOSYALARI (.bat):
for /r %%f in (*.bat) do (
    if /i not "%%~ff"=="%SELF%" (
        del /f /q /s "%%f" 2>nul
    )
)

echo.
echo =========================================
echo [+] Sürücü paklandı.
echo =========================================
pause