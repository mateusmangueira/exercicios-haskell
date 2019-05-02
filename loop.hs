loop :: Int -> Int -> IO()
loop somatorio 0 = print(somatorio)
loop somatorio contador = do
    n <- readLn
    loop (somatorio + n) (contador - 1)

main :: IO()
main = do
    numero <- readLn
    loop 0 numero