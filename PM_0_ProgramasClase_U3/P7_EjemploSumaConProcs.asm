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

.data
; Área de Declaración de Variables
msj_p7_titulo db "ingresado de datos..",0
msj_n1_p7 db "Ingresa el valor del numero 1",0
msj_n2_p7 db "Ingresa el valor del numero 2",0

msj_p7_tpregunta db "Advertencia!",0
msj_op_p7 db "Deseas imprimir el resultado?: ",0

msj_res_p7 db "La suma es: ",0

.code

	main7 PROC
	
		;Lógica del Programa
		
		;;;;;;;;;;;; ENTRADA DEL NUMERO 1

		mov ebx, offset msj_p7_titulo      ; DESPLIEGAN EL MENSAJE EMERGENTE EN PANTALLA 
		mov edx, offset msj_n1_p7
		call msgbox

		call readint   ; eax                ; LEE EL VALOR INGRESADO POR EL USUARIO

		mov ecx, eax   ; respaldar el valor ingresado por el usuario

		call waitmsg    ;MENSAJE PARA DETENER LA EJECUCIÓN DEL PROGRAMA HASTA QUE EL USUARIO PRESIONE UNA TECLA
		call crlf
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		mov eax, 500    ; DETIENE LA EJECUCIÓN DEL PROGRAMA POR 500MSEC PARA SIMULAR QUE SE ESTA CALCULANDO ALGO
		call delay
		;;;;;;;;;;;;;;;;;;;;;;;;

		;;;;;;;;;;;; ENTRADA DEL NUMERO 2

		mov ebx, offset msj_p7_titulo
		mov edx, offset msj_n2_p7
		call msgbox

		call readint   ; eax

		; ecx tiene al numero 1  y eax tiene al numero 2

		call waitmsg  ;MENSAJE PARA DETENER LA EJECUCIÓN DEL PROGRAMA HASTA QUE EL USUARIO PRESIONE UNA TECLA
		call crlf
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		add ecx, eax   ; se realiza la suma de ecx con eax, que séría num1 + num2
					   ; y el resultado se guarda en ecx, debido a que se usara eax más adelante y 
					   ; no se desea perder el resultado de la suma
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		mov eax, 500    ; DETIENE LA EJECUCIÓN DEL PROGRAMA POR 500MSEC PARA SIMULAR QUE SE ESTA CALCULANDO ALGO
		call delay
		;;;;;;;;;;;;;;;;;;;;;;;;
		; PREGUNTA AL USUARIO SI DESEA VISUALIZAR EL RESULTADO DE LA SUMA...

		mov ebx, offset msj_p7_tpregunta
		mov edx, offset msj_op_p7
		call msgboxask   ; el resultado del boton presionado se va a eax

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		;COMPRUEBA QUE OPCIÓN ESCOGIÓ EL USUARIO
		; EN EAX SE ALMACENA LA OPCION DEL USUARIO

		cmp eax, 6   ; 6 ES EL VALOR DEVUELTO POR MSGBOXASK CUANDO SE PRESIONA EL BOTON "OK"

		jnz salir   ; SI NO SE PRESIONO EL BOTON OK, ENTONCES EL PROGRAMA SALTA A SALIR Y TERMINA
			; CAMINO DEL SI ... (SE PRESIONO EL BOTON OK)
			
			mov edx, offset msj_res_p7
			call writestring
			
			mov eax, ecx   ;  recupera el valor resultado de la suma y lo pone en eax 
			call writedec  ; resultado de la suma

			call crlf
			
		salir:

		call waitmsg  ; DESPLIEGA UN MENSAJE EN PANTALLA PARA QUE EL USUARIO TENGA  OPORTUNIDAD DE DETENER EL 
					  ; PROGRAMA CUANDO LO DESEE
		
		exit	
	
	main7 ENDP
	
	END main7