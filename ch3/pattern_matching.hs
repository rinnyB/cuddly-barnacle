lucky :: Int -> String
lucky 7 = "seven!"
lucky x = "nope! " ++ show x ++ " is not 7"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

charName :: Char -> String
charName 'a' = "Astronaut"
charName 'b' = "Bee"
charName 'c' = "Cookie"
-- fails with anything except 'a' or 'b' or 'c'
-- charName 'w'


-- addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
-- addVectors a b = (fst a + fst b, snd a + snd b)
addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (a, _, _) = a

second :: (a, b, c) -> b
second (_, b, _) = b

third :: (a, b, c) -> c
third (_, _, c) = c

-- pattern match on list; 
-- list of tuples
xs = [(1, 3), (4, 3), (2, 4), (5, 3), (5, 6), (3, 1)]
sums = [a + b | (a, b) <- xs]


head' :: [x] -> x
head' (x: _) = x -- (x, xs) = x
head' [] = error "No head of empty list"

tell :: (Show a) => [a] -> String 
tell [] = "Empty list"
tell (x:[]) = "List with one elem:" ++ show x
tell (x: y: []) = "List with two elems: " ++ show x ++ " and " ++ show y
tell (x: y: _) = "The list is long..." {-- 7 miles --}  ++ " first two elements are " ++ show x ++ ", " ++ show y
-- tell x = "Long list. First two elems: " ++ show(take 2 x)

firstLetter :: String -> String
firstLetter "" = error "Empty string"
firstLetter str@(x:xs) = "First letter of " ++ str ++ " is "  ++ [x] -- [x] is a string of single elem;


-- bmiTell :: Double -> String
-- bmiTell bmi
--     |  bmi <= 18.5 = "You're underweight!"
--     |  bmi <= 25.0 = "You're OK!"
--     |  bmi <= 30.0 = "You're overweight"
--     |  otherwise  = "Now that's THICC... "  -- otherwise is a keyword


-- didn't work >_<
-- bmiTell :: Double -> Double -> String
-- bmiTell weight height
--     let bmi = weight / height ^ 2
--     bmi
--     | bmi <= 18.5 = "Underweight"
--     | bmi <= 25.0 = "Okie"
--     | bmi <= 30.0 = "Overweight!"
--     | otherwise = "Go see a doctor!"

-- bmiTell :: Double -> Double -> String
-- bmiTell weight height
--     | weight / height ^ 2 <= 18.5 = "Underweight"
--     | weight / height ^ 2 <= 25.0 = "Ok"
--     | weight / height ^ 2 <= 30.0 = "Overweight"
--     | otherwise = "THICC"


max' :: (Ord a) => a -> a -> a
max' a b
    | a <= b = b
    | otherwise = a


myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a == b = EQ
    | a <= b = LT
    | otherwise = GT


bmiTell :: Double -> Double -> String
bmiTell weight height
    | bmi <= 18.5 = "Underweight"
    | bmi <= 25.0 = "Okie"
    | bmi <= 30.0 = "Overweight!"
    | otherwise = "Go see a doctor!"
    where bmi = weight / height ^ 2
