Arbeitsblatt: Verschiebbare Figuren

Letzte Woche haben Sie eine kleine Bibliothek für den Umgang mit Figuren
implementiert. In diesem Arbeitsblatt arbeiten wir ebenfalls mit Figuren
jedoch mit andern Typen:

> data Figure = Circle Point Float
>             | Line Point Point
>             deriving Show

Der Typ Point wird verwendet um ein Punkt in einer 2D Ebene zu definieren:

       ^ y
       |    P(x,y)
       |
-------|--------> x
       |

> data Point = XY Float Float deriving Show

Ein Punkt kann man entlang eines Vektors verschieben:

> data Vector = Vec Float Float

> movePoint :: Vector -> Point -> Point
> movePoint (Vec dx dy) (XY x y) = XY (x + dx) (y + dy)

Auch ganze Figuren können verschoben werden:

> moveFigure :: Vector -> Figure -> Figure
> moveFigure v (Circle p s) = Circle (movePoint v p) s
> moveFigure v (Line p1 p2) = Line (movePoint v p1) (movePoint v p2)


Sie zeigen das System einem Kollegen. Er findet es toll und schlägt Ihnen vor
auch Textboxen zu unterstützen. Auch diese sollen positionierbar und verschiebbar sein:

> data TextBox = Text Point String deriving Show

Eine TextBox ist KEINE Figur und Sie müssen schon wieder eine neue Funktion definieren
um eine TextBox zu verschieben.

> moveText :: Vector -> TextBox -> TextBox
> moveText v (Text p s) = Text (move v p) s

Das beginnt Sie zu nerven. Eigentlich wollen Sie doch einfach sagen "move v XXX" und
das move soll abhängig vom Typ des XXX sich entsprechend verhalten.

Aufgabe 1)
Definieren Sie die Typeklasse Movable. Sie soll eine Methode beinhalten:
move :: Vector -> a -> a

> class Movable a where
>   move :: Vector -> a -> a

Aufgabe 2)
Implementieren Sie Instanzen für Point, Figure und TextBox.

> instance Movable Point where
>   move = movePoint

> instance Movable Figure where
>   move = moveFigure

> instance Movable TextBox where
>   move = moveText

Aufgabe 3)
Implementieren Sie eine Instanz für [a] wobei a der Typklasse Movable
angehören muss:

> instance Movable a => Movable [a] where -- Movable a => damit wir nur Movable Element akzeptieren
>   move v as = map (\a -> move v a) as

Wenn Sie alles richtig gemacht haben, können Sie nun eine Liste,
die Figuren enthält verschieben:

> before = [Line (XY 0 0) (XY 1 1), Circle (XY 3 4) 3.4]

Aktivieren Sie die folgende Zeile wenn Sie Aufgabe 1 - 3 gelöst haben.

> after = move (Vec 2 3) before


------------------------------ STOP ----------------------------

Aufgabe 4)
Wenn Sie einen Punkt ausgeben sieht das z.B. so aus "XY 1 2".
Implementieren Sie eine eigene Show Instanz, die einen Punkt wie
folgt ausgibt: "P(x=1,y=2)"
Hinweis: Sie müssen das "deriving Show" bei der bestehenden Point-
Definition entfernen.

>

Aufgabe 5)
Implementieren Sie für den Typ Point eine Instanz für die Klasse Eq.

>

Aufgabe 6)
Implementieren Sie für den Typ Point eine Instanz für die Klasse Ord.
Hinweis: Zuerst nach der X Komponente und dann nach der Y Komponente vergleichen:

>

Aufgabe 7)
Implementieren Sie für den Typ Figure eine Instanz für die Klasse Eq.

>
