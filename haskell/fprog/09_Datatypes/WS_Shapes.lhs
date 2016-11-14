Arbeitsblatt: Figuren als Algebraische Datentypen

Hinweis: Sie lesen diesen Text in einem literate Haskell File.
Aller Text wird als Kommentar behandelt, ausser er startet mit '>'.

In diesem Arbeitsblatt implementieren wir eine kleine Bibliothek für den
Umgang mit Figuren.

a) Definieren Sie den Datentyp Shape.
Zwei Formen werden von der Bibliothek unterstützt:
- Kreis: Die Grösse wird über den Radius angegeben
- Rechteck: Die Grösse wird über die Länge und die Breite angegeben

Hinweis: Verwenden Sie deriving (Show) damit Ihr Datentyp auf in einen
lesbaren String übersetzt werden kann.

> data Shape = Circle Float
>            | Rectangle Float Float
>              deriving Show

b) Definieren Sie die Funktion circumference, die den Umfang einer Form berechnet:
Hinweis: Die Kreiskonstante π ist vordefiniert unter dem Namen pi.

> circumference :: Shape -> Float
> circumference (Circle r) = 2 * pi * r
> circumference (Rectangle a b) = 2 * (a + b)

c) Gegeben ist der Datentyp Point. Ein Punkt beschreibt mit zwei Float
Werten eine X/Y Koordinate in der Ebene.

> data Point = XY Float Float -- XY kann bspw. auch Point heissen
>              deriving Show

Definieren Sie den Typ Figure. Eine Figure ist ein positioniertes Shape.
Verwenden Sie als Komponenten den Typ Point und den Typ Shape.

> data Figure = Fig Shape Point
>              deriving Show

f = Fig (Circle 3) (XY 1 2)

d) Definieren Sie die Funktion um eine Figur zu verschieben.
Der erste Float ist die Differenz in Richtung x und der zweite Float ist
die Differenz in Richtung y.

> move :: Figure -> Float -> Float -> Figure
> move (Fig s (XY x y)) dx dy = Fig s (XY (x+dx) (y+dy))

move f 1 2
