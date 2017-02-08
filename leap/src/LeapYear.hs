module LeapYear (isLeapYear) where

divisibleBy :: Integer -> Integer -> Bool
divisibleBy x y = mod x y == 0

divisibleByFour :: Integer -> Bool
divisibleByFour x = divisibleBy x 4

divisibleByOneHundred :: Integer -> Bool
divisibleByOneHundred x = divisibleBy x 100

divisibleByFourHundred :: Integer -> Bool
divisibleByFourHundred x = divisibleBy x 400

isLeapYear :: Integer -> Bool
isLeapYear year
  | divisibleByFour year && not (divisibleByOneHundred year)  = True
  | divisibleByOneHundred year && divisibleByFourHundred year = True
  | otherwise                                                 = False
