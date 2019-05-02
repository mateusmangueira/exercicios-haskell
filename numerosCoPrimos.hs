coprimos :: Int -> Int -> Int -> Bool
coprimos numero1 numero2 divisor
    |divisor > menorNumero numero1 numero2 = True
    |(mod numero1 divisor) /= 0 || (mod numero2 divisor) /= 0 = coprimos numero1 numero2 (divisor + 1)
    |otherwise = False

menorNumero :: Int -> Int -> Int
menorNumero x y
    |x > y = y
    |otherwise = x

main :: IO()
main = do  
    n1 <- readLn
    n2 <- readLn
    print(coprimos n1 n2 2)