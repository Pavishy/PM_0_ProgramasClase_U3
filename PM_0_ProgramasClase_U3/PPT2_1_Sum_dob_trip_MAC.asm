TITLE C�lculo del doble y el triple de un n�mero ingresado por el usuario.

;DESCRPICI�N
;Objetivo:  C�lcular del doble y el triple de un n�mero ingresado por el usuario
; Mtro. Alejandro Garcia
; Autore(s): Escalante Figueroa Pablo Angel
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; �rea de Declaraci�n de Variables

.code

mainY PROC
;L�gica del Programa

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