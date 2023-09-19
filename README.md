# Assembly-program
## Assembly Language code  nasm 

Topic Covered:
    • Data Declaration and Direct Addressing  
    • Unconditional jumps and relative addressing 
    • Addressing Mode, Branching .
    • Bit Manipulations, Bitwise Logical Operations and Masking Operations.

## Q No1: Write an assembly language program to store your Roll Number(Number part only) and calculate their sum.
 Solution in EX01.ASM

 
## Q No2: Find the offset address where Physical address is 4A37Bh and the segment address is 40FFh 
Physical address = 4A37Bh
Segment address = 40FFh 
4A37Bh  = (40FFh *10) +offset
4A37Bh  = 40FF0h  +offset

Offset Address = (40FFh << 4) + 4A37Bh
Offset address = 4A37Bh - 40FF0h
 Offset address= 938Bh
