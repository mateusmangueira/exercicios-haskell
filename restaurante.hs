main :: IO()
main = do
    pedidos <- readLn :: IO Int
    calculaPedidos pedidos 0

calculaPedidos :: Int -> Int -> IO()
calculaPedidos x total
    |x > 0 = do
    pedido <- getLine
    calculaPedidos (x-1) (total + (refeicao pedido))
    |otherwise = do
    putStrLn (show (total))

refeicao :: String -> Int
refeicao x
    | x == "cafe" = 8
    | x == "almoco" = 12
    | x == "jantar" = 10
    | otherwise = 0