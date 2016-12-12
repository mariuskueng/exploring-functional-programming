== Übung 11: Folds ==

> import Data.List (find)

In dieser Übung dreht sich (fast) alles um folds. Folds implementieren mächtige
Rekursionsmuster mit deren Hilfe Sie einige bekannte andere HOFs
implementieren können:

Aufgabe 1: Filter
Implementieren Sie die Funktion filter' mittels foldr:

> filter' :: (a -> Bool) -> [a] -> [a]
> filter' f (x:xs) = foldr (\x xs -> if f x then x:xs else xs ) [] xs

Aufgabe 2: Map
a) Implementieren Sie die Funktion mapr mittels foldr.
Sie dürfen nur Lambda Ausdrücke, (:) und foldr verwenden:

> mapr :: (a -> b) -> [a] -> [b]
> mapr f = foldr (\x xs -> f x : xs) []

b) Implementieren Sie die Funktion mapl mittels foldl.
Sie dürfen nur Lambda Ausdrücke, (++) und foldl verwenden:

> mapl :: (a -> b) -> [a] -> [b]
> mapl f xs = foldl (\acc x -> acc ++ [f x]) [] xs

Aufgabe 3: Length
Implementieren Sie die Funktion lenght' mittels foldr:

> length' :: [a] -> Int
> length' xs = foldr (\_ acc -> acc + 1) 0 xs

Aufgabe 4: Concat
Implementieren Sie die Funktion concat' mittels foldr:

> concat' :: [[a]] -> [a]
> concat' xs = foldr (\y ys -> y ++ ys) [] xs


Aufgabe 5:
Die Funktion find kann verwendet werden um in einer Liste
nach einem Element zu suchen, das ein Kriterium erfüllt.

*> :t find
find :: (a -> Bool) -> [a] -> Maybe a

Find nimmt eine Liste von a und eine Funktion mit der ein Listen-
element gesucht werden kann.
Das Resultat ist vom Typ Maybe a weil ja möglicherweise kein
Resultat gefunden werden kann:

find even [1,2,3] ~> Just 2
find even [1,3,5] ~> Nothing

Wenn Sie find verwenden müssen Sie also damit rechnen, dass kein
Treffer gefunden werden kann. Deshalb müssen Sie auf dem Resultat
immer eine Fallunterscheidung machen:

> data Student = Student { email :: String, matrikelNr :: Int }

> findMatrikelByEmail :: [Student] -> String -> Maybe Int
> findMatrikelByEmail students emailAddr =
>   case find (\s -> email s == emailAddr) students of
>      Nothing -> Nothing
>      Just s  -> Just (matrikelNr s)

Dem soll nun Abhilfe geschaffen werden! Implementieren Sie die map
Funktion für den Maybe Datentyp.

Hier ist die Signatur:

> mMap :: (a -> b) -> Maybe a -> Maybe b
> mMap = error "ToDo"

Mit Ihrer Definition sollte dann die findMatrikelByEmail so
implementiert werden können:

> findMatrikelByEmail' :: [Student] -> String -> Maybe Int
> findMatrikelByEmail' students emailAddr =
>   mMap matrikelNr (find (\s -> email s == emailAddr) students)
