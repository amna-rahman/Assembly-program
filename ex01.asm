[org 0x100]

	mov al, 0   ; Initialize accumulator to 0
	mov di, 0   ; Initialize destination index to 0
	mov cx, 9   ; Initialize loop counter to 9
	mov bl, 0   ; Initialize base low to 0

	; Start of summation loop
summation:
	add al, [vuid+di]   ; Add the value at [vuid+di] to the accumulator (sum)
	inc di   ; Increment the destination index
	dec cx   ; Decrement the loop counter
	jnz summation   ; Jump to summation if the loop counter is not zero

	mov [sum], al   ; Store the final sum in the memory location specified by [sum]

	mov ax, 0x4c00   ; Set the exit program function number in 'ax'
	int 0x21   ; Invoke the DOS interrupt to terminate the program

vuid: db 2, 2, 0, 4, 0, 6, 7, 6, 1   ; List of numbers
sum: db 0   ; Variable to store the final sum
