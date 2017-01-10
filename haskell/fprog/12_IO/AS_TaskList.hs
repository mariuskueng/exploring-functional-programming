import System.Environment
import System.IO
import Data.List

type Task = (Bool, String)
type TaskList = [Task]

let taskFile = "tasks.txt"

readTasks :: IO TaskList
readTasks = do content <- readFile taskFile
               let tasks = if null content then [] else (read content)
               length tasks `seq` return tasks

-- writeTasks :: TaskList -> IO ()
--
-- addTask :: String -> TaskList -> TaskList
--
-- numberTasks :: TaskList -> [(Int,Task)]
--
-- markDone :: Int -> TaskList -> TaskList

-- list              – Listet die Tasks nummeriert auf
-- add Beschreibung  – Fügt einen neuen Task hinzu
-- done n            – Markiert den n-ten Task als erledigt



main = do
  args      <- getArgs
  putStrLn (show args)
  readTasks

  putStrLn "asdf"
