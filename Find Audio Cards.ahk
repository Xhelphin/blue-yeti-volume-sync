#SingleInstance, force
SplashTextOn, , , Gathering audio data

Gui, New, , Audio data
Gui, Add, ListView, w400 h400 vMyListView, Mixer|Value
LV_ModifyCol(1, "Integer")
SetFormat, Float, 0.2

Loop
{
    CurrMixer := A_Index
    SoundGet, Setting, , , %CurrMixer%
    if (ErrorLevel = "Can't Open Specified Mixer")
    {
        break
    }
    LV_ADD("", CurrMixer, Setting)
}

Loop % LV_GetCount("Col")
{
    LV_ModifyCol(A_Index, "AutoHdr")
}

SplashTextOff
Gui, Show
return

GuiClose:
ExitApp