# Learning Haskell

Learning Haskell with official document and learnyouahaskell.com<http://learnyouahaskell.com/starting-out>.  

I would only record the unique feature of Haskell without those common basic usages. Some of features might be mixed and show with examples.  

#### list and list comprehension

**[x*2 | x <- [1..10], x > 5, x < 8]** means draw x from 1 to 10 (list ranges: [1..10]) which satisfy the following coditions(, x>5, x<8), and then double all the x filtered.  

**take 100 [x|x<-[2..],length [s|s<-[2..x-1],(x `mod` s)/=0] + 2 == x]** This line take the top 100 prime from an infinite prime list.
