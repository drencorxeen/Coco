5 PRINT "DOING AUTOEXEC"
10 LOADM"AUTOEXEC
20 POKE &HEA,3
30 POKE &HEB,2
40 POKE &HEC,17
50 POKE &HEE,14
60 POKE &HEF,0
70 FOR X=1 TO 3
80 POKE &HED,X:EXEC &HD75F
90 IF PEEK(&HF0)<>0 THEN STOP
100 NEXT X
110 PRINT "DOING AUTO"
120 LOADM"AUTO",&HE00
130 LOADM"CRCIT":EXEC
140 POKE &HEA,3
150 POKE &HEB,2
160 POKE &HEC,17
170 POKE &HEE,14
180 POKE &HEF,0
190 POKE &HED,1:EXEC &HD75F
200 IF PEEK(&HF0)<>0 THEN STOP
210 PRINT"DONE!"
