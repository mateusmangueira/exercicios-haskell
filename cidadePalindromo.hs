ehPalindromo :: String -> Bool
ehPalindromo palavra = palavra == reverse palavra

criaPalindromo :: String -> IO()
criaPalindromo palavra = do
     let saida = palavra ++ reverse palavra
     print(saida)

main :: IO()
main = do
    entrada <- getLine
    if(ehPalindromo entrada) then print(entrada) else criaPalindromo entrada
       
   
   
    