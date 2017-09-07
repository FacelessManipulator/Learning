module Types
( Point(..) -- means export all the value constructors
, Shape(Circle, Rectangle) -- means only export the selected
, Person
, Vector -- the mathematical vector
, Pair -- defined with type
, Pairs
, surface
-- , volume
) where

data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)
data LockState = Taken | Free deriving (Show, Eq)
data Person = Person { firstName :: String
                     , lastName :: String
					 , age :: Int
					 , height :: Float
	} deriving (Show)
-- Could make a Person like following
-- let person = Person {firstName="miller", lastName="maxwell", age=16 ,height=189.2}

data Vector a = Vector a a deriving (Show, Eq, Ord) -- with the type parameter, vector capable to contain any type of Haskell.

type Pair a b = (a,b)
type Pairs a b = [Pair a b]
surface :: Shape -> Float
surface (Circle (Point _ _) r) = 2.0 * pi * r
surface (Rectangle (Point x1 y1) (Point x2 y2)) = abs $ (y2-y1)*(x2-x1)



