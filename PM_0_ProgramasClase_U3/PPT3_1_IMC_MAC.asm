TITLE Saltos Condicionales

;DESCRPICI�N 
;Objetivo: Explicaci�n
;
; Autore(s):
;         Mtro. Alejandro Garcia
;          Su Nombre.! 
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; �rea de Declaraci�n de Variables

peso dword ?
altura dword ?

.code

    ims PROC    
        ;L�gica del Programa

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