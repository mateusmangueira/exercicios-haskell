import System.Random

main :: IO()
main = do
    putStrLn "Lancando dois dados"
    dado1 <- randomRIO(1,6::Int)
    dado2 <- randomRIO(1,6::Int)
    putStrLn("As faces foram: " ++ show dado1 ++ " e " ++ show dado2)