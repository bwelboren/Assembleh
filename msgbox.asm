%include "win32n.inc"       


; externals

EXTERN ExitProcess
IMPORT ExitProcess kernel32.dll
EXTERN MessageBoxA
IMPORT MessageBoxA user32.dll

; data

segment .data USE32

Titel	db "Titel", 0
Tekst db "Hallo Wereld", 0

ErrorCode dd 0

; code

segment .code USE32

; execution starts here

..start

push dword MB_ICONHAND + MB_OK
push dword Titel
push dword Tekst
push dword 0
call [MessageBoxA]

push dword ErrorCode
call [ExitProcess]
