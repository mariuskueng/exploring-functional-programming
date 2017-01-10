-- compile: ghc MiniCalc.hs
-- run: ./MiniCalc

main = do putStrLn "Welcome to MiniCalc!"
          putStrLn "Please enter a first number:"
          s1 <- getLine
          putStrLn "Please enter a second number:"
          s2 <- getLine
          putStrLn "Please enter an operator (+,-,*,/):"
          op <- getLine
          let n1 = read s1 :: Int
          let n2 = read s2 :: Int
          let result = n1 + n2
          let msg = first ++ " + " ++ second ++ " = " ++ show result
          putStrLn msg
          main
