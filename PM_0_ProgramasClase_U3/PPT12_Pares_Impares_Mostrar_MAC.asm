TITLE Pedir N números e indicar cuantos son pares y cuantos no son pares.    

;DESCRPICIÓN 
;Objetivo: Lectura de números por consola
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

par dword 0
impar dword 0

.code

	nparimp PROC
	 ImpPantalla_LecturaLn "Dame el total de numeros: "

	 mov ecx, eax
	 mov ebx, 2

	 ciclo:
	      ImpPantalla_LecturaLn "Ingresa un numero: "

		  mov edx, 0
		  div ebx

		  cmp edx, 0
		     je Cic_par
			 inc impar
		      jmp nextciclo

			 Cic_par:
			  inc par

		 nextciclo:
	 loop ciclo

	 ImpPantalla "Numeros pares: "

	 mov eax, par
	 EscribirNUM
	 Salto

	 ImpPantalla "Numeros imapres: "

	 mov eax, impar
	 EscribirNUM
	 Salto

	 exit

	nparimp ENDP
	END nparimp
