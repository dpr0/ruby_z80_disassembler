    device zxspectrum48
    org #6100 ; адрес на который компилировать    
begin_file:
    push ix      ; dd e5
    ld a,(#1234) ; 3a 34 12
    RET

end_file:
    display "code size: ", /d, end_file - begin_file
    savebin "error.C", begin_file, end_file - begin_file
