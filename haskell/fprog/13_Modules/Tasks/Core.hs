type Task = (Bool,String)
type TaskList = [Task]

readTasks :: FilePath -> IO TaskList
readTasks file = do
    exists <- doesFileExist file
    if not exists then return []
    else do content <- readFile file
            let tasks = if null content then [] else (read content)
            length tasks `seq` return tasks

writeTasks :: FilePath -> TaskList -> IO ()
writeTasks file tasks = writeFile file (show tasks)

listTasksAction :: FilePath -> IO ()
listTasksAction file = do
  tasks <- readTasks file
  putStrLn (concat (showTasks tasks))

modifyTasks :: FilePath -> (TaskList -> TaskList) -> IO ()
modifyTasks file f = do
  tasks <- readTasks file
  writeTasks file (f tasks)

addTaskAction :: FilePath -> String -> IO ()
addTaskAction file desc =
  modifyTasks file (addTask desc)

markDoneAction :: FilePath -> Int -> IO ()
markDoneAction file nr =
  modifyTasks file (markDone nr)

addTask :: String -> TaskList -> TaskList
addTask task tasks = tasks ++ [(False, task)]

removeTask :: Int -> TaskList -> TaskList
removeTask nr tasks = take nr tasks ++ drop (nr+1) tasks

markRemoveAction :: FilePath -> Int -> IO ()
markRemoveAction file nr =
  modifyTasks file (removeTask nr)

{-
markDone :: Int -> TaskList -> TaskList
markDone tId tasks = map md (numberTasks tasks)
  where md (nr, (done,desc)) | nr == tId = (True,desc)
                             | otherwise = (done,desc)
-}

markDone :: Int -> TaskList -> TaskList
markDone nr tasks = prefix ++ (True, desc) : rest
  where (prefix, (_, desc) : rest) = splitAt nr tasks

--numberTasks :: TaskList -> [(Int,Task)]
--numberTasks tasks = zip [0..] tasks

numberTasks :: TaskList -> [(Int,Task)]
numberTasks tl = number tl 0
  where number [] _ = []
        number (t:ts) n = (n,t) : number ts (n+1)

showTasks :: TaskList -> [String]
showTasks [] = ["Horray! You've got nothing to do."]
showTasks ts  = map showTask (numberTasks ts)

showTask :: (Int, Task) -> String
showTask (nr,(done,desc)) = nrStr nr ++ " " ++ doneStr done ++ " " ++ desc ++ "\n"
  where doneStr True  = "[X]"
        doneStr False = "[ ]"
        nrStr nr =  show nr ++ "."
