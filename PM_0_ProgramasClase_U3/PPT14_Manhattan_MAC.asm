TITLE Determinar si la suma de dos números es mayor a un tercer número

;DESCRPICIÓN
;Objetivo: Explicación
;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.!
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; Área de Declaración de Variables

total dword 0

.code

manhattan PROC
;Lógica del Programa
  
   ImpPantalla_LecturaLn "Dame el total de numeros: "
   mov ecx, eax

   Ciclo:
     call crlf
     ImpPantalla_LecturaLn "Dame x: "
     push eax

     ImpPantalla_LecturaLn "Dame y: "
     mov ebx, eax
     pop eax
     sub eax, ebx

     cmp eax, 0
        jge Next

    push eax
    mov eax, 0
    pop ebx
    sub eax, ebx

     Next:
        add total, eax
       
   loop Ciclo

    Salto
   ImpPantalla "El resultado fue "
   mov eax, total
   EscribirNUM
   Salto

exit
manhattan ENDP
END manhattan

