Set WshShell = WScript.CreateObject("WScript.Shell")

Do
    Randomize
    charCode = Int((90 - 65 + 1) * Rnd + 65) ' Zufälliger Buchstabe A-Z
    WshShell.SendKeys Chr(charCode)
Loop
