10 JMS F
20 CLS
30 PCLEAR 8
35 LOADM"SPRITE
50 LINE INPUT"OBJECT NAME: ";O$
55 N$=O$+".TXT"
60 LINE INPUT"OFFSET (ENTER = NO): ";F$
65 LINE INPUT"CLEAR (ENTER = NO): ";C$
66 POKE &HE6C6,&H21:HSCREEN 2
80 IF F$="Y" THEN POKE &HE00,1
85 IF C$="Y" THEN POKE &HE09,1
90 OPEN "O",#1,N$
100 PRINT #1,O$
110 PRINT "SAVEING ";N$
120 POKE 111,1:EXEC
130 PRINT #1," RTS"
140 CLOSE
150 PCLEAR 4
160 PRINT"SIZE X =";INT( (PEEK(&HE06)-PEEK(&HE02))/2+.6)
170 PRINT"SIZE Y =";PEEK(&HE08)-PEEK(&HE04)
180 PRINT"DONE!"
