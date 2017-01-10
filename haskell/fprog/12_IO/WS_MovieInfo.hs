import System.Environment
import Network.HTTP
import Data.List

-- :main Arg1 Arg2
-- :set args Arg1 Arg2 

main = do
  args      <- getArgs
  putStrLn (show args)
  let term  = intercalate "%20" args
  putStrLn term
  let query = "http://www.omdbapi.com/?t=" ++ term
  response  <- simpleHTTP (getRequest query)
  code <- getResponseCode response
  putStrLn $ show code
  content   <- getResponseBody response
  putStrLn content


              
              