TITLE Lectura de numero primo

;DESCRPICI�N 
;Objetivo: Explicaci�n
;
; Autore(s):
;         Mtro. Alejandro Garcia
;          Su Nombre.! 
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  
INCLUDE MACROS.inc

.data
; �rea de Declaraci�n de Variables
 
.code
prim PROC

;L�gica del Programa

    ImpPantalla_LecturaLn "Igresa el numero: "
   
    and eax, 1 
    jz npri 
    jnz pri 
    pri:
        ImpPantalla "Es primo "
        jmp salir
    npri:
        ImpPantalla "No es primo "
        jmp salir
    salir:
        Salto

exit 
           
prim ENDP 
END prim