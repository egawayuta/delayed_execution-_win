@echo off

rem ------------------------------------------------------

rem OS���オ���Ă���w��b��Ɏw��̃A�v���P�[�V������@���܂�
rem �X�^�[�g�A�b�v�ɓ���Ďg�p���Ă�������

rem �N���܂ł̎��ԁi�b���j���w��
set /A delay=10

rem �N���������A�v���P�[�V�����́i�t���j�p�X���w��
set appspath=%windir%\system32\notepad.exe

rem ------------------------------------------------------

if exist "%appspath%" (
  call timeout %delay%
  call start "" "%appspath%"
) else (
  call echo;
  call echo ---- �w��̃t�@�C�������݂��܂��� ----
  call echo;
  pause
)
exit