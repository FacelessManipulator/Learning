merge :: (Ord a) => [a] -> [a] -> [a]
merge xs [] = xs
merge [] xs = xs
merge fullx@(x:xs) fully@(y:ys)
    | cond = x:(merge xs fully)
	| otherwise = y:(merge fullx ys)
    where cond = x < y

mergesort :: (Ord a) => [a] -> [a]
mergesort [] = []
mergesort [a] = [a]
mergesort xs = merge (mergesort lPart) (mergesort rPart)
    where mid = quot (length xs) 2;
	      lPart = take mid xs;
		  rPart = drop mid xs
