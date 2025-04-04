TITLE Weekdays Symbolic Constants (SymbolicConstants.asm)

INCLUDE Irvine32.inc

SUN = 0
MON = 1
TUE = 2
WED = 3
THU = 4
FRI = 5
SAT = 6

.data
weekDays BYTE SUN, MON, TUE, WED, THU, FRI, SAT

.code
main PROC
	exit

main ENDP
END main