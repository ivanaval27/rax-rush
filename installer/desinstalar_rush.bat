@echo off
echo DESINSTALANDO RAX RUSH...
echo.

:: Eliminar accesos directos (nuevos y antiguos)
del "%USERPROFILE%\Desktop\RAX RUSH.lnk" 2>nul
del "%USERPROFILE%\Desktop\RAX Carfutbolin.lnk" 2>nul
del "%USERPROFILE%\Desktop\RAX Carfutbolín.lnk" 2>nul
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\RAX RUSH\RAX RUSH.lnk" 2>nul
rmdir "%APPDATA%\Microsoft\Windows\Start Menu\Programs\RAX RUSH" 2>nul
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\RAX Carfutbolin\RAX Carfutbolin.lnk" 2>nul
rmdir "%APPDATA%\Microsoft\Windows\Start Menu\Programs\RAX Carfutbolin" 2>nul

:: Eliminar archivos de programa
rmdir /s /q "C:\Program Files\RAX RUSH" 2>nul
rmdir /s /q "C:\Program Files (x86)\RAX RUSH" 2>nul
rmdir /s /q "C:\Program Files\RAX Carfutbolín" 2>nul
rmdir /s /q "C:\Program Files (x86)\RAX Carfutbolín" 2>nul

:: Eliminar datos de usuario
rmdir /s /q "%LOCALAPPDATA%\RAX RUSH" 2>nul
rmdir /s /q "%LOCALAPPDATA%\RAX Carfutbolin" 2>nul

:: Eliminar entradas de registro
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\RAX RUSH" /f 2>nul
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\RAX RUSH.exe" /f 2>nul
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\RAX Carfutbolín" /f 2>nul
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\RAX Carfutbolin.exe" /f 2>nul

echo ✅ RAX RUSH desinstalado completamente.
echo Ahora podes instalar la version nueva con el setup.
pause
