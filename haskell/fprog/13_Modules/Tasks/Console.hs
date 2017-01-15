import System.IO
import System.Directory
import Core

taskFile :: FilePath
taskFile = "TasksDB.txt"

main :: IO ()
main = do
  hSetBuffering stdin NoBuffering
  hSetBuffering stdout NoBuffering
  putStrLn "FProg Task List Manager"
  loop

loop :: IO ()
loop = do
    putStr "> "
    line <- getLine
    let input = words line
    if null input
      then loop
      else
        let (cmd:args) = input
        in do dispatch cmd (unwords args)
              loop

dispatch :: String -> String -> IO ()
dispatch "list"   _  = listTasksAction taskFile
dispatch "add"    t  = addTaskAction taskFile t
dispatch "done"   nr = markDoneAction taskFile (read nr)
dispatch "remove"   nr = markRemoveAction taskFile (read nr)
dispatch _        _  = return ()
