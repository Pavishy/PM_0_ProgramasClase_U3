TITLE  suma de 4 numeros 

;DESCRPICI�N 
;Objetivo: Lectura de n�meros por consola
;
; Autore(s):
;         Mtro. Alejandro Garcia
;		  Su Nombre.! 
;         
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; �rea de Declaraci�n de Variables


.code

	tarea PROC	
	  ;L�gica del Programa
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