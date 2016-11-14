data BookInfo = Book Int String deriving (Show)

 --b = Book 12345325235 "The Room"

isbn :: BookInfo -> Int
isbn (Book isbnnr _) = isbnnr

-- isbn b

data BillingInfo = CreditCard Float String String
                 | Invoice Float Int
                  deriving (Show)

amount :: BillingInfo -> Float
amount (CreditCard a _ _) = a
amount (Invoice a _) = a
