TITLE Pedir números hasta que sea ingresado un valor negativo. 
;Se imprimirá a todos los números conforme son 
;ingresados a excepción del negativo. 

;DESCRPICIÓN 
;Objetivo: Lectura de números por consola
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

	valne PROC

		   ciclo:
		        ImpPantalla_LecturaLn_V2 "Dame un numero: "
				cmp eax, 0
				   jl next
				EscribirNUM
				Salto
				Salto
				jmp ciclo

			next:
			Salto
			exit

	valne ENDP
	END valne


