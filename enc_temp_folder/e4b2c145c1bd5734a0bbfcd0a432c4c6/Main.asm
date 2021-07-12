.386
.model flat

.data
quote	byte "Machines do feel",0
message byte SIZEOF quote DUP(0),0

.code
start	proc
		mov esi,0
		mov ecx,SIZEOF quote

LP:
		mov al, quote[esi]
		mov message[esi],al
		inc esi
		loop LP


		ret
start	endp
end		start	
		