README.md
23-Nov-2024


Weird!
FM does work but I must add either one of these two statements:

devkit_SMS_EnableAudio( 1 );
caps = devkit_SMS_GetFMAudioCapabilities();

When I do the FM audio example.mbm plays no problem
if I leave both statements out then the FM audio does not play??