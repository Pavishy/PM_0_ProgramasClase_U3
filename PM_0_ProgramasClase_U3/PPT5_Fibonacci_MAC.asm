TITLE FIBONACCI

;DESCRPICI�N 
;Objetivo: Explicaci�n
; Autore(s):
;         Mtro. Alejandro Garcia
;          Su Nombre.! 
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
   previo DWORD ?
   actual  DWORD ?

.code

 mainfi PROC
 
    ImpPantalla_LecturaLn "Dame el limite: "

    mov ecx, eax

       mov   eax,1         
       mov   previo,0         
       mov   actual,0         
    L1:
       add eax,previo             
       mov edx, actual       
       mov previo, edx
       mov actual, eax
   
       EscribirNUM
       Salto
       dec ecx
       jnz L1
    salir: 
        exit

mainfi ENDP
END mainfi
        