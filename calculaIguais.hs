funcaoLenght:: [Int] -> Int
funcaoLenght [] = 0
funcaoLenght (x:xs) =  1 + funcaoLenght xs
 
 
auxiliar::[Int] -> [Int]
auxiliar [] = []
auxiliar (x:xs) = [1 + funcaoLenght (filter (==x) xs)] ++ auxiliar (filter (/=x) xs)
 
iguais:: [Int] -> Int
iguais [] = 0
iguais entrada = (div (head entrada) 2) + iguais (tail entrada)
main:: IO()
main = do
    entrada <- getLine
    let variavelAuxiliar = auxiliar (read entrada)
    let saida = iguais variavelAuxiliar
    print saida