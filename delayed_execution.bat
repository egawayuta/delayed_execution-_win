@echo off

rem ------------------------------------------------------

rem OSが上がってから指定秒後に指定のアプリケーションを叩きます
rem スタートアップに入れて使用してください

rem 起動までの時間（秒数）を指定
set /A delay=10

rem 起動したいアプリケーションの（フル）パスを指定
set appspath=%windir%\system32\notepad.exe

rem ------------------------------------------------------

if exist "%appspath%" (
  call timeout %delay%
  call start "" "%appspath%"
) else (
  call echo;
  call echo ---- 指定のファイルが存在しません ----
  call echo;
  pause
)
exit