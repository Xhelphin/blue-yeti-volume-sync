#SingleInstance, force

IniRead, MicrophoneID, sync_config.ini, AudioInterfaces, MicID
IniRead, HeadphoneID, sync_config.ini, AudioInterfaces, HeadID

SoundGet, HeadphonePreviousVolume, , , %HeadphoneID%
SoundGet, MicrophonePreviousVolume, , , %MicrophoneID%

while True
{
    SoundGet, HeadphoneVolume, , , %HeadphoneID%
    SoundGet, MicrophoneVolume, , , %MicrophoneID%
    if (MicrophoneVolume != MicrophonePreviousVolume and HeadphoneVolume != HeadphonePreviousVolume)
    {
        SoundSet, MicrophoneVolume, , , %HeadphoneID%
    } else if (HeadphoneVolume != HeadphonePreviousVolume)
    {
        SoundSet, HeadphoneVolume, , , %MicrophoneID%
    } else if (MicrophoneVolume != MicrophonePreviousVolume)
    {
        SoundSet, MicrophoneVolume, , , %HeadphoneID%
    }
    SoundGet, HeadphonePreviousVolume, , , %HeadphoneID%
    SoundGet, MicrophonePreviousVolume, , , %MicrophoneID%
    Sleep 175
}

#!j::
MsgBox, Exiting...
ExitApp