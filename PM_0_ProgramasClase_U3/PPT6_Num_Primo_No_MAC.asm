TITLE Lectura de numero primo

;DESCRPICIÓN 
;Objetivo: Explicación
;
; Autore(s):
;         Mtro. Alejandro Garcia
;          Su Nombre.! 
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  
INCLUDE MACROS.inc

.data
; Área de Declaración de Variables
 
.code
prim PROC

;Lógica del Programa

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