TITLE Pedir n�meros hasta que sea ingresado un valor negativo. 
;Se imprimir� a todos los n�meros conforme son 
;ingresados a excepci�n del negativo. 

;DESCRPICI�N 
;Objetivo: Lectura de n�meros por consola
; Autore(s):
;         Mtro. Alejandro Garcia
;		  Su Nombre.!    
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  
INCLUDE MACROS.inc

.data
; �rea de Declaraci�n de Variables

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


