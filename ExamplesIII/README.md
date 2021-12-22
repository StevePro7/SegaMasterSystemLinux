readme
22/12/2021

Use latest VHII SMSlib.h and SMSlib.lib on SDCC 3.6.9 and test 4.1.0 on Windows and Linux

Do NOT use devkit wrapper - run all in VS Code directly
All examples should work fine then clone to ExamplesIV
but upgrade to latest devkitSMS SMSlib.h and SMSlib.lib will cause issues??


https://code.visualstudio.com/docs/cpp/customize-default-settings-cpp
https://chromium.googlesource.com/chromium/src/+/refs/heads/main/docs/vscode.md

Reference:
~\GitHub\StevePro7\Blogger\Linux\MyCCpp

Create folder	HelloWorld


tasks.json
"./build.bat"	cross platform

launch.json
"preLaunchTask": "./build.bat"

settings.json
"C_Cpp.errorSquiggles": "Disabled"


Ctrl+F5		Run
F5			Debug

Warning
vscode expected a type specifier
just disable C++ squiggles above