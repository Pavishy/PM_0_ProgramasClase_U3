TITLE ANDOMRANGE 5 a 10 con limite de 20

;DESCRPICIÓN 
;Objetivo: R
; Autore(s):
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data

.code
    menu PROC
        call Clrscr
        mov eax, 5
        mov ebx, 10
        mov ecx, 20 ;limite

        L1:
            push eax            ; doesn't change range
            push ebx

            call BetterRandomRange

            pop ebx
            pop eax
            
        Loop L1

        call WaitMsg


    BetterRandomRange:
        sub ebx, eax        ;mov 20 a ebx
        xchg ebx, eax        ;random funciona con eax
        call RandomRange    ; genera el random como entero
        neg ebx              
        sub eax, ebx        ;sub 5 desde eax a definir el rango
        call WriteInt        ; escribir con signo si es decimal
        call Crlf
        ret
   

    exit

menu endp
end menu