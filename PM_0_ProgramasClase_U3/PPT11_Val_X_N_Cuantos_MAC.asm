TITLE Pedir un valor para X y N n�meros e indicar 
;cuantas veces aparece X en los N n�meros.�

;DESCRPICI�N 
;Objetivo: Lectura de n�meros por consola
;
; Autore(s):
;         Mtro. Alejandro Garcia
;		  Su Nombre.!         
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; �rea de Declaraci�n de Variables

count dword 0

.code

	mainXN PROC
	      ImpPantalla_LecturaLn "Dame un numero: "
		  mov ebx, eax
		  ImpPantalla_LecturaLn "Dame el total de numeros: "

		  mov ecx, eax
		  inc ecx
		  Salto

		  ciclo:
		      dec ecx
			  jz next

			  ImpPantalla_LecturaLn "Dame un numero: "

			  cmp ebx,eax
			  jne ciclo
			  
			  inc count
			  jmp ciclo

	       next:
			 Salto
		     ImpPantalla  "El numero "

			 mov eax, ebx
			 EscribirNUM

			 ImpPantalla " aparece "
			 mov eax, count
			 EscribirNUM
			 ImpPantallaLn " veces."

			exit

	mainXN ENDP
	END mainXN


