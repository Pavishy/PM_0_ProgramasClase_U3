TITLE Matriz 2x2

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

aux dword ? 

.code

    mat PROC    

        ;Lógica del Programa
        
        ImpPantalla "Inserta la matriz"
        
        mov ecx, 4

        ciclo:
             Salto
             LeeNTeclado
             push eax
             dec ecx
             jnz ciclo
        
       pop edx   
       pop ecx    
       pop ebx    
       pop eax   
       mul edx
       push eax

       mov eax, ebx
       mul ecx
       mov ebx, eax
       pop eax
       sub eax, ebx

        ImpPantalla "La Determinante es: "
        
        EscribirNUM
        Salto 

        exit    
    mat ENDP
    END mat