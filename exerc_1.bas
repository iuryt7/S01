10 INPUT "Digite o valor de a: "; a
20 INPUT "Digite o valor de b: "; b
30 INPUT "Digite o valor de c: "; c

40 d = b * b - 4 * a * c

50 IF d < 0 THEN GOTO 200
60 IF d = 0 THEN GOTO 100

70 REM Se d > 0
80 x1 = (-b + SQR(d)) / (2 * a)
90 x2 = (-b - SQR(d)) / (2 * a)
100 PRINT "As raízes da equação são: "; x1; " e "; x2
110 GOTO 210

120 REM Se d = 0
130 x = -b / (2 * a)
140 PRINT "A equação possui uma raiz real: "; x
150 GOTO 210

200 PRINT "A equação não possui raízes reais."

210 END