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

.code

tres PROC

;Lógica del Programa
   mov ecx, 5

   ciclo:
        ImpPantalla_LecturaLn "Dame un numero: "
        push eax

   loop ciclo

   pop ebx
   pop eax
   pop ecx
   add eax, ecx
   Salto

   ImpPantallaLn "La suma: "

   cmp eax, ebx
      jg  mayor
      Imp "No es mayor"
      jmp ending
   
   mayor:
      Imp "Es mayor"

    ending:
    
    EscribirTXT
    Salto

exit
tres ENDP
END tres