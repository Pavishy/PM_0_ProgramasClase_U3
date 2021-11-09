TITLE Indice de Masa Corporal

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


