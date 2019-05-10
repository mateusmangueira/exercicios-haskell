reverso :: String -> String
reverso [] = []
reverso (x:xs) = (reverso xs) ++ [x]
 
criaPalindromo :: String -> String
criaPalindromo entrada = entrada ++ (reverso entrada)
 
main :: IO()
main = do
    entrada <- getLine
    let saida = criaPalindromo entrada
    putStrLn saida