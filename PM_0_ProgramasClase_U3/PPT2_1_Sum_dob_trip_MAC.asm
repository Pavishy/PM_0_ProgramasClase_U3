TITLE Cálculo del doble y el triple de un número ingresado por el usuario.

;DESCRPICIÓN
;Objetivo:  Cálcular del doble y el triple de un número ingresado por el usuario
; Mtro. Alejandro Garcia
; Autore(s): Escalante Figueroa Pablo Angel
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; Área de Declaración de Variables

.code

mainY PROC
;Lógica del Programa

	ImpPantallaLn "Ingresa un numero que se calculara el doble y el triple "
	LeeNTeclado
	
    mov ebx,eax 
	mov ecx,eax 

	Suma_V2 eax, ebx
	mov eax,ebx

	Salto

	ImpPantallaLn "El primer numero al doble es: "
	EscribirNUM
	Salto
	
	Suma_V2 ecx, eax
	mov eax,ebx

	Salto

	ImpPantallaLn "El primer numero al triple es: "
	EscribirNUM

	Salto

 exit
mainY ENDP
END mainY