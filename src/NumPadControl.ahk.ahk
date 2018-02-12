#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Numpad8::SendInput, {volume_Up}
Return
Numpad2::SendInput, {volume_Down}
Return

Numpad4::
SendInput {LCtrl down}
SendInput {LWin down}
SendInput {Left}{LCtrl up}{LWin up}
Return

Numpad6::
SendInput {LCtrl down}
SendInput {LWin down}
SendInput {Right}{LCtrl up}{LWin up}
Return

Numpad5::
SendInput {LWin down}
SendInput {Tab}{LWin up}
Return