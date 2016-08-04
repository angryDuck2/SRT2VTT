#SRT2VTT

This library is able to create a vtt file from an srt file.
It uses a shared instance of the library for every function.


There is only one function to this library.

`[[SRT sharedConverter]convertFileToVTT:@""]`

The vtt file is stored on the same directory as the initial file with the same name but with the vtt file extension and the vtt file path is returned by the function

All you need to use this library is to input it on your podfile
```
source 'https://github.com/aggelos81/CocoaSpecs'
pod 'SRT2VTT'
```
