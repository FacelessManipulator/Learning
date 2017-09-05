# Learning Haskell

Learning Haskell with official document and learnyouahaskell.com <http://learnyouahaskell.com/starting-out>.  

I would only record the unique feature of Haskell without those common basic usages. Some of features might be mixed and show with examples.  

### list and list comprehension

`[x*2 | x <- [1..10], x > 5, x < 8]`  
This means draw x from 2 to 10 (list ranges: [1..10]) which satisfy the following coditions(, x>5, x<8), and then double all the x filtered.  

`[(x,y) | x <- [1..5], y <- [1..5], odd x, odd y]`  
List comprehension could also draw elements within several lists. The result is the Cartesian product (笛卡尔积) of these sets after filtered.  
 
```take 100 [x|x<-[2..],length [s|s<-[2..x-1],(x `mod` s)/=0] + 2 == x]
```  
This line take the top 100 prime from an infinite prime list.

### Types
Haskell has some common basic types as other langugers. (Int, Integer, Float, Double, Bool, Char).  
The functions also have these types. And the types could be declared above the implemente of function. The type of return variable is usually the last one. For example:    
`add' :: Int -> Int -> Int
add' x y = x + y`  

Haskell also has a feature called type variable. This feature allows developers to write generic functions such as `head`.`head :: [a] -> a`

### Typeclasses
Typeclass is similar to the Interface in Java. For example, `(==) :: (Eq a) => a -> a -> Bool` shows that the function `==` is an implementation of `Eq`, take two variables in the same type `a` as input and return a Bool result.  

### Partern match
`tell :: (Show a) => [a] -> String
tell [] = "Empty list"
tell (x:[]) = "The list only contains " ++ show x
tell fulllist@(x:_) = "The list (" ++ show fulllist++") starts with " ++ show x
`
As you see, we can define a factorial function recursively. We can also putting a name and `@` before pattern to name it.  

### Guards
```
cmp :: (Integral a, Show a) => a -> a -> String
a `cmp` b
	| a > b && rest==0 = "a%b=0"
	| a > b	&& rest/=0 = "a%b=" ++ show rest
	| otherwise	= "a<b"
	where rest = a `mod` b
```
Guards could be write in one line:
```
cmp :: (Ord a) => a -> a -> Ordering
cmp a b | a>b = GT | a<b = LT | otherwise = EQ
```

### Let it be
`Let binding` is very similar to `where binding`. Bug `Let binding`could be used anywhere. `let <bindings> in <expression>` should be treat as an expression including list comprehension.
```
(let square x = x*x in square 5, let a=1; b=2 in a + b)
[x*2 | x <- [1..10], let a = x*2 - 10, x > a]
```

### Case expression
```
case expression of pattern -> result  
                   pattern -> result  
				   pattern -> result 
```



