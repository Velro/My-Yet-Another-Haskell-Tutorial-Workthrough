{- INCOMPLETE
write a program that asks the user for numbers until they enter zero.
Then output the sum of all the numbers, the product of all the numbers,
and for each number, its factorial
-}

module Main
    where

import System.IO

main = do
    hSetBuffering stdin LineBuffering
    putStrLn "Give me a number (or 0 to stop):"
    strNum <- getLine
    let readInt = read :: String -> Int
    let num = readInt strNum
    doInputLoop [num]

doInputLoop [] = do
    putStrLn ("exit")

doInputLoop (x:xs) = do
    putStrLn "Give me a number (or 0 to stop):"
    strNum <- getLine
    let number = read strNum
    if number == 0
        then doInputLoop []
        else x : doInputLoop [number]


    --            putStrLn "Sum:" ++ foldr (+) xs
    --    else do doInputLoop (x : doInputLoop xs)


-- use (show integer) for int to string casting
