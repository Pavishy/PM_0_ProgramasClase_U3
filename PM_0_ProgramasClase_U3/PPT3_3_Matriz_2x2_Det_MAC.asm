TITLE Matriz 2x2

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

aux dword ? 

.code

    mat PROC    

        ;L�gica del Programa
        
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