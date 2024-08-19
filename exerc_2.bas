REM Programa para gerar um número aleatório e calcular o fatorial
RANDOMIZE TIMER
n = INT(RND * 10) + 1
PRINT "Número gerado: "; n

REM Calcula o fatorial
fatorial = 1
FOR i = 1 TO n
fatorial = fatorial * i
NEXT i
PRINT "O fatorial de "; n; " é: "; fatorial