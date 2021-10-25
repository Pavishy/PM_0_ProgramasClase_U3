TITLE x

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
; Autore(s):
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables

.code

main4 PROC
	
	mov ecx,10

	call randomize ; establece la semilla para el generador de numeros
				   ; aleatorios en base del dia que se ejecuta
				   ; su funcionalidad no puede ser visualizada desde consola
				   ; se recomienda utilizarlo una vez por programa al iniciarse
	ciclo:
	
	call writeint
	call crlf
	call random32  ; genera un numero aleatorio y lo guarda en eax (no combiene/numeros grandes)
	call crlf
	call writeint ; immprime el valor de eax (que en este punto correspone al aleatorio obtenido)
	
	loop ciclo

exit

main4 ENDP	
END main4