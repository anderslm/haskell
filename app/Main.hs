module Main where

import Lib
import Data.Time

main :: IO ()
main = do
  currentTime <- getCurrentTime
  let period = MeasuringPeriod { from = currentTime, to = currentTime }
  let reading = UnverifiedReading (Reading 234.2 period) 
  someFunc
