module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune


getPlanetOffset :: Planet -> Float
getPlanetOffset planet =
  case planet of
    Mercury -> 0.2408467
    Venus -> 0.61519726
    Earth -> 1
    Mars -> 1.8808158
    Jupiter -> 11.862615
    Saturn -> 29.447498
    Uranus -> 84.016846
    Neptune -> 164.79132


secondsInYears :: Float -> Planet -> Float
secondsInYears seconds planet =
  seconds / (31557600 * (getPlanetOffset planet))


ageOn :: Planet -> Float -> Float
ageOn planet seconds =
  secondsInYears seconds planet
