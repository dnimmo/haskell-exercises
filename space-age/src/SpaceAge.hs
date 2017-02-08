module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune


secondsInYears :: Float -> Float -> Float
secondsInYears seconds planetOffset =
  seconds / (31557600 * planetOffset)


ageOn :: Planet -> Float -> Float
ageOn planet seconds =
  case planet of
    Mercury -> secondsInYears seconds 0.2408467
    Venus -> secondsInYears seconds 0.61519726
    Earth -> secondsInYears seconds 1
    Mars -> secondsInYears seconds 1.8808158
    Jupiter -> secondsInYears seconds 11.862615
    Saturn -> secondsInYears seconds 29.447498
    Uranus -> secondsInYears seconds 84.016846
    Neptune -> secondsInYears seconds 164.79132
    _ -> 0
