TITLE Pedir n, ingresar n calificaciones e imprimir si
;el usuario aprobó o no. Se aprueba con 7.

;DESCRPICIÓN
;Objetivo: Explicación
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.!
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; Área de Declaración de Variables
.code

calift PROC

;Lógica del Programa
   
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