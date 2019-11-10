module Main where

import Lib
import Data.Time
import Text.Printf

main :: IO ()
main = do
  currentTime <- getCurrentTime
  let period = MeasuringPeriod { from = currentTime, to = currentTime }
  let reading = Reading { value = 234.2, period = period }

  let validatedReading = validateReading reading
  
  printReading 
    (case validatedReading of
          InvalidReading invalid -> (value invalid)
          ValidReading valid -> 1.0)
  

printReading :: Double -> IO()
printReading value =
  printf "Validated value %f\n" value