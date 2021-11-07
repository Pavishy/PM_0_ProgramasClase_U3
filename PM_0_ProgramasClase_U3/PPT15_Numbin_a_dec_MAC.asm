TITLE Numero binario a decimal

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
arr byte 9 dup(0)
total dword 0
sec2 dword 1

.code

bin PROC

;L�gica del Programa
  
  ImpPantalla "Dame la longitud maxima: "

  mov edx, offset arr
  mov ecx, sizeof arr


 EscribirTXT
 mov ecx, eax
 dec ecx
 mov ebx, 1
 Salto

 ciclo:
     mov eax, 0
     mov edi, ecx
     mov al,arr[ecx]

     movzx eax, al
     sub eax, 48
     push eax
     mov eax, sec2
     mul ebx
     mov sec2, eax

     pop eax
     mul sec2
     add total, eax

     mov ecx, edi
     dec ecx
     mov ebx,2
     
     cmp ecx,-1
     jg ciclo

  ImpPantalla "El numero formado es: "

  mov eax, total
  EscribirNUM
  Salto

exit
bin ENDP
END bin