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

    ; Perform the find and replace operations directly on the clipboard
    For Find, Replace in FindReplaceList {
        StringReplace, Clipboard, Clipboard, %Find%, %Replace%, All
    }

    ; Paste the modified content back to Notepad
    Send ^{Home}
    Send ^a
    Sleep %SleepTime%
    Send ^v
    Sleep %SleepTime%

    ; Restore the original clipboard content
    Clipboard := OldClipboard

return
