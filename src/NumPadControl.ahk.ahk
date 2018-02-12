; Created by Julio Rodríguez
; Version: 0.2

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Start with controls enabled
enabled := true
SendInput {NumpadDot down}  ; To start with the script enabled

; To enable or disable numpad controls
NumpadDot::
if (%enabled% = true) {
    %enabled% := false
} else {
    SoundBeep
    %enabled% := true
}
Return

; ========== Control for volume ========== 
Numpad8::
if (%enabled% = true) {
    SendInput, {volume_Up}
} else {
    SendInput {Text}8
}
Return
Numpad2::
if (%enabled% = true) {
    SendInput, {volume_Down}
} else {
    SendInput {Text}2
}
Return

; ========== Control for navigating left on virtual desktops ========== 
Numpad4::
if (%enabled% = true) {
    SendInput {LCtrl down}
    SendInput {LWin down}
    SendInput {Left}{LCtrl up}{LWin up}
} else {
    SendInput {Text}4
}
Return

; ========== Control for navigating right on virtual desktops ========== 
Numpad6::
if (%enabled% = true) {
    SendInput {LCtrl down}
    SendInput {LWin down}
    SendInput {Right}{LCtrl up}{LWin up}
} else {
    SendInput {Text}6
}
Return

; ========== Control for Task View ========== 
Numpad5::
if (%enabled% = true) {
    SendInput {LWin down}
    SendInput {Tab}{LWin up}
} else {
    SendInput {Text}5
}
Return