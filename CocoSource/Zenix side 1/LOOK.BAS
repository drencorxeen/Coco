10 POKE &HEA,2
20 POKE &HEB,2
25 POKE &HEC,0
30 POKE &HED,10
40 POKE &HEE,4
50 POKE &HEF,0
60 DK=PEEK(&HC004)*256+PEEK(&HC005)
70 EXEC DK:GOTO 70
