0 PCLEAR 8:ON BRK GOTO 2:ON ERR GOTO 2
1 GOTO 5
2 WIDTH 40:STOP
5 JMS F:WIDTH 32:PMODE 4,1:PCLS:SCREEN 1,1
6 PMODE 4,5
10 DIM P(30,2),L(30,1),D(30,1)
15 XA=45/57.29577951:YA=0/57.29577951:ZA=10/57.29577951:DX=30:DY=30:DZ=30
25 NP=0:NL=0
26 :'***READ IN POINTS
40 READ P(NP,0),P(NP,1),P(NP,2)
50 IF P(NP,0)<>99999 THEN NP=NP+1:GOTO 40 :ELSE NP=NP-1
51 :'***READ IN LINES
52 READ L(NL,0),L(NL,1)
53 IF L(NL,0)<>-1 THEN NL=NL+1:GOTO 52 :ELSE NL=NL-1
60 :'***CALCULATE RAW ANGLES
65 XX=COS(XA)*DX:XY=SIN(XA)*DX:YX=COS(YA)*DY:YY=SIN(YA)*DY:ZX=COS(ZA)*DZ:ZY=SIN(ZA)*DZ
66 :'*** CALCULATE NEW POINTS
70 FOR PO=0 TO NP:X=P(PO,0):Y=P(PO,1):Z=P(PO,2):D(PO,0)=X*XX+Y*YX+Z*ZX+128:D(PO,1)=X*XY+Y*YY+Z*ZY+96:NEXT PO
75 ZA=ZA+.1:XA=XA+.1:YA=YA+.1
80 :'***DRAW PICTURE
90 PCLS:FOR LL=0 TO NL:L1=L(LL,0):L2=L(LL,1):LINE(D(L1,0),D(L1,1))-(D(L2,0),D(L2,1)),PSET:NEXT
190 PCOPY 5 TO 1:PCOPY 6 TO 2:PCOPY 7 TO 3:PCOPY 8 TO 4
200 GOTO 65
1000 DATA -1,-1,-1
1010 DATA -1,1,-1
1020 DATA 1,-1,-1
1030 DATA 1,1,-1
1040 DATA -1,-1,1
1050 DATA -1,1,1
1060 DATA 1,-1,1
1070 DATA 1,1,1
1080 DATA 99999,0,0
1100 DATA 0,1,1,3,3,2,2,0
1110 DATA 0,4,1,5,3,7,2,6
1120 DATA 4,5,5,7,7,6,6,4
1200 DATA -1,0
