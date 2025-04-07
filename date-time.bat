@echo off
:loop
:: Zufälliges Datum erzeugen (im Format MM-TT-JJJJ)
set /a "month=%random% %% 12 + 1"
set /a "day=%random% %% 28 + 1"
set /a "year=2025"

:: Format sicherstellen, dass der Monat und Tag zweiziffrig sind
if %month% lss 10 set month=0%month%
if %day% lss 10 set day=0%day%

:: Zufällige Uhrzeit erzeugen (im Format HH:MM:SS)
set /a "hour=%random% %% 24"
set /a "minute=%random% %% 60"
set /a "second=%random% %% 60"

:: Format sicherstellen, dass die Uhrzeit zweiziffrig ist
if %hour% lss 10 set hour=0%hour%
if %minute% lss 10 set minute=0%minute%
if %second% lss 10 set second=0%second%

:: Datum und Uhrzeit setzen
date %month%-%day%-%year%
time %hour%:%minute%:%second%

:: Kurze Pause (1 Sekunde), um den nächsten Zyklus zu starten
timeout /t 1 >nul

:: Schleife fortsetzen
goto loop
