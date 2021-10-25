TITLE x

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
; Autore(s):
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables

.code

main5 PROC
	
	mov ecx,10

	call randomize ; establece la semilla para el generador de numeros
				   ; aleatorios en base del dia que se ejecuta
				   ; su funcionalidad no puede ser visualizada desde consola
				   ; se recomienda utilizarlo una vez por programa al iniciarse
	ciclo:
	mov eax,101	   ; establece la semilla para generar numeros aleatorios entre 0 y 9 (no llega a 10)
	call crlf
	call writeint  ; immprime el valor de eax 
	call crlf
	call randomrange  ; genera un numero entre 0 y eax, incluso el num lo almacena en eax
					  ; si despues se genera otro numero en el mismo intervalo se
					  ; debe de colocar en el primer intervalo
	call writeint ; immprime el valor de eax (que en este punto correspone al aleatorio obtenido)
	call crlf
	call crlf
	loop ciclo
	
	; Tarea1U3 (Programa) - Adaptar randomrange para que de numeros entre A y B, donde B siempre sera mas grande que A
	; consideracion A y B siempre seran positivos
	; como generar un numero entre este y este en ensamblador, random range entre 0 y 10
	; operacion o formula matematica, entre 5 y 10
	; por ejemplo A = 5, B = 10, es una suma y una resta
	;
	;           Ejemplo A = 5 B = 10
	;		Genera numeros entre 5 y 10 sin llegar al 10
	; encontrar la formula matematica

exit

main5 ENDP	
END main5