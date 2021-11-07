TITLE  suma de 4 numeros 

;DESCRPICIÓN 
;Objetivo: Lectura de números por consola
;
; Autore(s):
;         Mtro. Alejandro Garcia
;		  Su Nombre.! 
;         
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; Área de Declaración de Variables


.code

	tarea PROC	
	  ;Lógica del Programa
	   ImpPantallaLn "Introducir 4 numeros: "
       LeeNTeclado
       mov ebx,0
       mov ecx,10

       Sumatoria
       Sumatoria
       Sumatoria
       Sumatoria

       ImpPantallaLn "El resultado es: "
       mov eax,ebx
       EscribirNUM
	 
     exit
        
	tarea ENDP
	END tarea