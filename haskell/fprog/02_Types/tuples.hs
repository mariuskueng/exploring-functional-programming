type Person = (String, String, Int)

name :: Person -> String
name (n, _, _) = n

teacher :: Person
teacher = ("Daniel Kröni", "056 202 78 17", 36)

fstInt :: (Int, Int) -> Int
fstInt (x, y) = x

sndInt :: (Int, Int) -> Int
sndInt (x, y) = y

nested :: (Int, (Int, Int)) -> Int
nested (x, (y, z)) = y -- nested(1,(2,3))

fst' :: (a, b) -> a
fst' (a, b) = a
