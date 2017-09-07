quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) = lSorted ++ [x] ++ rSorted
    where lSorted = quicksort [a | a<-xs, a<=x];
          rSorted = quicksort [a | a<-xs, a>x]

-- quicksort performs terrible on the reverse order list.
