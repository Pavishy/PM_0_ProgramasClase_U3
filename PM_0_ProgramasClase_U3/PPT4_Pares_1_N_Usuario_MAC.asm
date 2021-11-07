TITLE Par Impar

;DESCRPICIÓN 
;Objetivo: Explicación
;
; Autore(s):
;         Mtro. Alejandro Garcia
;		  Su Nombre.!
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  
INCLUDE MACROS.inc

.data
; Área de Declaración de Variables

.code
	ppimpar PROC	
		;Lógica del Programa

	continuar:
		
		ImpPantalla_LecturaLn "Ingresa un numero: "
		
		ImpPantalla "El numero es: "

		mov edx, 0
		mov ebx, 2
		div ebx 

		cmp edx, 0		
		 
		jz esIgual

			ImpPantalla "IMPAR"
			
			Salto
			Salto
			jmp continuar

		esIgual:
			ImpPantalla "PAR"
			
			Salto
			Salto

		jmp continuar
		exit	

	ppimpar ENDP
	END ppimpar