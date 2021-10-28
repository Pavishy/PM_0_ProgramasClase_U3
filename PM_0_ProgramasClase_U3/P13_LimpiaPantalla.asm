TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; Área de Declaración de Variables

.code

	main13 PROC
	
		;Lógica del Programa

		ImpPantallaLn "Mensaje 1 :)"
		ImpPantallaLn "Mensaje 2 :)"
		ImpPantallaLn "Mensaje 3 :)"
		ImpPantallaLn "Mensaje 4 :)"

		mov eax, 1500
		call delay  ; espera 500 ms
		
		call clrscr ;limpiar la pantalla

		ImpPantallaLn "Mensaje 5 :)"
		ImpPantallaLn "Mensaje 6 :)"

		exit	
	
	main13 ENDP
	
	END main13