TITLE Saltos Condicionales

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

mayor dword -2147483648

.code

    num PROC    
        ;Lógica del Programa

        ImpPantalla_LecturaLn "Dame el total de numeros: "
        
        mov ecx, eax
        
        ciclowhile:
            dec ecx
            Salto
            cmp ecx, 0
            jl salir

            LeeNTeclado
            cmp eax, mayor
                jg askmayor
                jmp ciclowhile

            askmayor:
               mov mayor, eax
               jmp ciclowhile
 
        salir: 

        ImpPantalla "El numero mayor es: "
        mov eax, mayor
        EscribirNUM

        Salto

        exit    
    
    num ENDP
    END num