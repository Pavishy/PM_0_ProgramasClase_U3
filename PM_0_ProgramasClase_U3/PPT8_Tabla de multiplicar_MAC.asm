TITLE Tabla de multiplicar que solicité al usuario 
;el resultado de la operación. Imprimir el total de errores

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

error dword 0
num dword 0

.code

tabla PROC
;Lógica del Programa
   
   ImpPantalla_LecturaLn "Dame la tabla: "
   mov num, eax

   mov ecx, 1
   ciclo:
       
       mov eax, num
       EscribirNUM
       mul ecx
       mov ebx, eax
       ImpPantalla " x "

       mov eax, ecx
       EscribirNUM
       ImpPantalla " = "
       call readint

       cmp eax, ebx
         je next
         inc error

       next:
       inc  ecx
       cmp ecx, 11
        jl ciclo

    Salto
    mov eax, error

    ImpPantallaLn "Obtuviste "

    EscribirNUM

    ImpPantalla " Errores "
    Salto

exit
tabla ENDP
END tabla