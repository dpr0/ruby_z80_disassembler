    device zxspectrum48
    org #6100 ; адрес на который компилировать    
begin_file:

    DEC IX
    ;INC IXL
    ;push ix
    ;pop ix
    ;ld (ix),d
    ;inc ix
    ;inc ix
    ;inc ix
    ;ld   hl,(ix)       ; DD 6E 00 DD 66 01
    RET

end_file:
    display "code size: ", /d, end_file - begin_file
    savebin "error.C", begin_file, end_file - begin_file
