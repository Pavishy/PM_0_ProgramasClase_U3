TITLE Tabla de multiplicar que solicit� al usuario 
;el resultado de la operaci�n. Imprimir el total de errores

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

error dword 0
num dword 0

.code

tabla PROC
;L�gica del Programa
   
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