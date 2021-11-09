TITLE Solicitar N pares de puntos (2 puntos por iteración) 
;y calcular el punto medio por cada par de puntos. 
;Nota: un punto se encuentra constituido por una coordenada 
;X y una coordenada Y.

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

x1 dword ?
x2 dword ?
y1 dword ?
y2 dword ?

.code

paresn PROC
;Lógica del Programa

  ImpPantalla_LecturaLn "Dame el total de puntos: "

  mov ecx, eax

  Ciclo:
       mov ebx, 2

      ImpPantalla_LecturaLn_V2 "Dame x1: "
      mov x1, eax

      ImpPantalla_LecturaLn_V2 "Dame y1: "
      mov y1, eax
      Salto

      ImpPantalla_LecturaLn_V2 "Dame x2: "
      mov x2, eax

      ImpPantalla_LecturaLn_V2 "Dame y2: "
      mov y2, eax

      mov eax, x1
      add eax, x2
      mov edx, 0
      idiv ebx
      mov x1, eax

      mov eax, y1
      add eax, y2
      mov edx, 0
      idiv ebx
      mov ebx, eax

      ImpPantalla "("
      mov eax, x1
      EscribirNUM

      ImpPantalla ","
      mov eax, ebx
      EscribirNUM

      ImpPantalla ")"
      Salto
      Salto

      dec ecx
      mov eax,ecx
      cmp eax,0
      jz salir
	  jmp ciclo

      salir:
      exit

exit
paresn ENDP
END paresn










