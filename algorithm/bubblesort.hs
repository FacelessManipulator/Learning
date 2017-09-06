swapif :: (Ord a) => (a->a->Bool) -> [a] -> [a]
swapif f [] = []
swapif f [x] = [x]
swapif f (x:y:xs)
    | cdt = y: (swapif f (x:xs))
	| otherwise = x: (swapif f (y:xs))
	where cdt = f x y
bubblesort :: (Ord a) => [a] -> [a]
bubblesort [] = []
bubblesort full = (last xs):(bubblesort (init xs))
    where xs = swapif (\x y -> x < y) full
