;--------------------------------------------------------------------------
; outi96_fix.s
;
; The banked devkitSMS crt0 (crt0b_sms.rel) only ships the _OUTI32, _OUTI64
; and _OUTI128 blocks used by SMSlib's UNSAFE_SMS_VRAMmemcpy* helpers -
; unlike the non-banked crt0_sms.rel it is missing the _OUTI96 block that
; UNSAFE_SMS_VRAMmemcpy96 (and therefore UNSAFE_SMS_load3Tiles) tail-calls
; into. With newer SMSlib.lib builds (matching SDCC 4.2.0) this results in
; the linker warning:
;   ?ASlink-Warning-Undefined Global '_OUTI96' referenced by module 'SMSlib_UNSAFE'
;
; This module simply supplies the missing self-contained _OUTI96 block
; (96 OUTI instructions followed by a RET), matching the layout used by
; devkitSMS's own crt0_sms.s. Add outi96_fix.rel to the link command,
; alongside crt0b_sms.rel.
;--------------------------------------------------------------------------
        .module outi96_fix

        .area _CODE

_OUTI96::                               ; _OUTI96 label points to a block of 96 OUTI and a RET
        .rept 96
        outi
        .endm
        ret
