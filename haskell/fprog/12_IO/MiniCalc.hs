-- compile: ghc MiniCalc.hs
-- run: ./MiniCalc

main = do putStrLn "Welcome to MiniCalc!"
          putStrLn "Please enter a first number:"
          first <- getLine
          putStrLn "Please enter a second number:"
          second <- getLine
          let result = (read first :: Int) + (read second :: Int)
          let msg = first ++ " + " ++ second ++ " = " ++ show result
          putStrLn msg
