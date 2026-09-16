16-Sep-2026

preLaunch - if you want launch to run tasks first
{
    "version": "0.2.0",
    "configurations": [
        {
            "type": "emulicious-debugger",
            "request": "launch",
            "name": "Launch in Emulicious",
            "program": "${workspaceFolder}/output.sms",
            "port": 58870,
            "stopOnEntry": false,
            "preLaunchTask": "build"
        }
    ]
}