module Bob (responseFor) where
import Data.Char (isUpper, isAlpha, isSpace)
import Data.List (isSuffixOf, dropWhileEnd)


isShouting :: String -> Bool
isShouting message =
  let letters = filter isAlpha message
  in not (null letters) && all isUpper letters


isQuestion :: String -> Bool
isQuestion message =
  isSuffixOf "?" (dropWhileEnd isSpace message)


isEmpty :: String -> Bool
isEmpty message =
  length (dropWhileEnd isSpace message) == 0


responseFor :: String -> String
responseFor message
  | isEmpty message     = "Fine. Be that way!"
  | isShouting message  = "Whoa, chill out!"
  | isQuestion message  = "Sure."
  | otherwise           = "Whatever."
