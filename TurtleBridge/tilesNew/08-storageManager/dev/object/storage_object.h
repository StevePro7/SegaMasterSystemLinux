#ifndef _SAVEGAME_OBJECT_H_
#define _SAVEGAME_OBJECT_H_

// Reference: http://www.smspower.org/forums/16013-DevkitSMSSMSlibMissingRequestingFeatures#91899
typedef struct tag_struct_storage_object
{
	unsigned long Magic;

	unsigned char num_bytes;
	unsigned char sgb_byte1;
	unsigned char sgb_byte2;
	unsigned char sgb_byte3;

	//unsigned char terminal;

} struct_storage_object;

#endif//_SAVEGAME_OBJECT_H_