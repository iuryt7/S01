-- Cria uma lista de 30 até 1
listaOriginal :: [Int]
listaOriginal = [30,29..1]

-- Multiplica cada número da lista por 3
listaMultiplicada :: [Int]
listaMultiplicada = map (*3) listaOriginal

-- Inverte a lista e mostra o último elemento
ultimoElemento :: Int
ultimoElemento = head (reverse listaMultiplicada)

-- Calcula o fatorial de um número
fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = product [1..n]

-- Verifica se o número é maior que 0
processaNumero :: Int -> Int
processaNumero n
    | n > 0     = fatorial n
    | otherwise = n * 2

-- Função principal
main :: IO ()
main = do
    -- Exercício 1
    putStrLn "Exercício 1:"
    print listaOriginal
    print listaMultiplicada
    print (reverse listaMultiplicada)
    print ultimoElemento

    -- Exercício 2
    putStrLn "\nExercício 2:"
    let numero1 = 5  -- Exemplo de número maior que 0
    let numero2 = -3 -- Exemplo de número menor que 0
    print (processaNumero numero1)
    print (processaNumero numero2)