TITLE Pedir n, ingresar n calificaciones e imprimir si
;el usuario aprob� o no. Se aprueba con 7.

;DESCRPICI�N
;Objetivo: Explicaci�n
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.!
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; �rea de Declaraci�n de Variables
.code

calift PROC

;L�gica del Programa
   
   ImpPantalla_LecturaLn "Dame el total de calificaciones: "

   mov ecx, eax 
   push ecx
   mov ebx, 0
   
   ciclo:
        ImpPantalla_LecturaLn "Dame una calificacion: "
        add ebx, eax
  loop ciclo

   mov eax,ebx
   pop ebx
   mov edx,0
   div ebx
   cmp eax,7
        jl Reprobado
        Imp "Aprobaste"
        jmp Next
       
    Reprobado:
        Imp "Reprobaste"
    Next:
         EscribirTXT
         Salto
         Salto
exit
calift ENDP
END calift