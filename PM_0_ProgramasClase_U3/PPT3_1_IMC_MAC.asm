TITLE Saltos Condicionales

;DESCRPICIÓN 
;Objetivo: Explicación
;
; Autore(s):
;         Mtro. Alejandro Garcia
;          Su Nombre.! 
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; Área de Declaración de Variables

peso dword ?
altura dword ?

.code

    ims PROC    
        ;Lógica del Programa

        ImpPantalla_LecturaLn "Dame el peso(en kg): "
        
        mov ebx, 1000
        mul ebx
        mov peso,eax

        ImpPantalla_LecturaLn "Dame la altura (en Centimetros):  "
        
        mov altura,eax
        mul altura
        mov altura,eax

        mov eax,peso
        mov edx, 0
        div altura
        
        ImpPantalla "Tu imc es: "
        EscribirNUM

        Salto

        salir: 
        exit    
    
    ims ENDP
    END ims