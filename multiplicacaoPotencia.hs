multiplicacaoPotencia :: Int -> Int
multiplicacaoPotencia 1 = 1
multiplicacaoPotencia numero = (numero * numero) * multiplicacaoPotencia(numero - 1)

main :: IO()
main = do
    numero <- readLn
    print(multiplicacaoPotencia numero)