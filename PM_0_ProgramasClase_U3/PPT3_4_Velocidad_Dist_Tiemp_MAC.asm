TITLE Indice de Masa Corporal

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
    velocidad PROC 

        ImpPantalla_LecturaLn "Dame el tiempo: "

        mov ecx, eax

        ImpPantalla_LecturaLn "Dame la distancia: "
        mov edx, 0
        div ecx

        ImpPantalla "La velocidad es: "
        EscribirNUM

        Salto

        salir: 
        exit    
    
    velocidad ENDP
    END velocidad


