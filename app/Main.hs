module Main where

import Lib
import Data.Time
import Text.Printf
import GHC.Float

main :: IO ()
main = do
  currentTime <- getCurrentTime
  let period = MeasuringPeriod { from = currentTime, to = currentTime }
  let reading = Reading { value = 234.2, period = period }
  let unverified = UnverifiedReading reading
  
  {-let value = case validateReading unverified of
                    InvalidReading ir -> (value ir) :: Double
                    ValidReading vr -> (value vr) :: Double
                    _ -> -1.0 :: Double-}
    
  
  
  putStrLn . printf "Validated value %f" $ (value reading)