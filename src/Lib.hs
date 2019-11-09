module Lib
    ( someFunc
    , MeasuringPeriod ( MeasuringPeriod, from, to )
    , Reading ( Reading )
    , LoadProfileReading ( UnverifiedReading )
    ) where

import Data.Time

data MeasuringPeriod = MeasuringPeriod { from :: UTCTime, to :: UTCTime }

data Reading = Reading Double MeasuringPeriod

data LoadProfileReading = UnverifiedReading Reading | InvalidReading Reading | ValidReading Reading

someFunc :: IO ()
someFunc = putStrLn "someFunc"
