TITLE Determinar si la suma de dos n�meros es mayor a un tercer n�mero

;DESCRPICI�N
;Objetivo: Explicaci�n
;
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

tres PROC

;L�gica del Programa
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