module Main
       where

main = putStrLn "Hello World"

x = 5
y = (6, "Hello")
z = x * fst y

signum x = if x < 0
              then -1
              else if x > 0
                      then 1
                      else 0

roots a b c = 
      let det = sqrt (b*b - 4*a*c)
          twice_a = 2*a
      in ((-b + det)/twice_a,
          (-b - det)/twice_a)
      
-- Heres a comment
{-
    Heres a block comment
    asdfsaddf
    {- wow these can actually be nested -}
-}
        
factorial 1 = 1
factorial n = n * factorial (n-1)
                            
my_length [] = 0
my_length (x:xs) = 1 + my_length xs

my_filter p [] = []
my_filter p (x:xs) = if p x
                         then x : my_filter p xs
                         else my_filter p xs


  -- exercise 3.7 recursive fibonacci sequence
  -- I dont think this is correct...
my_fib 1 = 1
my_fib 2 = 2
my_fib n = my_fib (n - 2) + my_fib (n - 1)

  -- exercise 3.8 define a recursive function that accomplishes
  -- multiply though addition
  
my_mult a b = 
  if b > 1
      then a + my_mult (a) (b-1)
      else a

-- 3.9 define recursive function reimplementing map
my_map f [] = []
my_map f (x:xs) = f x : my_map f xs
      
