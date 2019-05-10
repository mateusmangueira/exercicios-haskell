matriz:: [[(String,Int)]] -> Int
matriz [] = 0
matriz entrada = (calculoAuxiliar (head entrada)) + (matriz (tail entrada))
 
calculoAuxiliar:: [(String,Int)] -> Int
calculoAuxiliar [] = 0
calculoAuxiliar (x:xs) = (snd x) + calculoAuxiliar xs  
 
 
main:: IO()
main = do
    entrada <- getLine
    let saida = matriz (read entrada)
    print saida