;Prompt Chat-GPT4
;Adapt the code below to copy the notepad's content to the clipboard. Then, replace directly at the clipboard and paste it back to notepad.

#NoEnv
SetKeyDelay, 1
SendMode Input
SetWorkingDir %A_ScriptDir%

; Use the SleepTime to adjust the speed the commands are entered
SleepTime := 100

F8::
    ; Save the original clipboard content
    OldClipboard := ClipboardAll
    Clipboard := ""

    ; Copy all text to the clipboard
    Send ^{Home}
	Send ^a
    Sleep %SleepTime%
    Send ^c
    ClipWait, 1

    ; Read find and replace pairs from the file
    FindReplaceFile := "FindReplaceList.txt"
    FindReplaceList := {}
    FileRead, Content, %FindReplaceFile%
    Loop, Parse, Content, `n, `r
    {
        StringSplit, Pair, A_LoopField, `;
        FindReplaceList[Pair1] := Pair2
    }


    For Find, Replace in FindReplaceList {
        ; Check if the search text is present in the document
        if (InStr(Clipboard, Find)) {
            ; Open Find and Replace dialog
            Send ^h
            Sleep %SleepTime%

            ; Go to the Find what
            Send !n
            Sleep %SleepTime%
            Send {Del}
            Sleep %SleepTime%

            ; Input the search text
            SendInput %Find%
            Sleep %SleepTime%
            Send {Return}
            Sleep %SleepTime%

            ; Move to the Replace field
            Send !i
            Sleep %SleepTime%
            Send {Del}
            Sleep %SleepTime%

            ; Input the replacement text
            SendInput %Replace%
            Sleep %SleepTime%
            Send {Return}
            Sleep %SleepTime%

            ; Replace all occurrences
            Send !a
            Sleep %SleepTime%
            ; Closes the MessageBox describing the number of occurences
            Send {Esc}
            Sleep %SleepTime%
            ; Closes the Find and Replace dialog
            Send {Esc}
            Sleep %SleepTime%
            ; One last ESC, just to make sure no window is open
            Send {Esc}
            Sleep %SleepTime%
        }
    }
    Sleep %SleepTime%
    ; Returns to the beginning of the document
    Send ^{Home}^{Home}^{Home}

    ; Restore the original clipboard content
    Clipboard := OldClipboard

return
