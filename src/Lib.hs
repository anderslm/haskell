module Lib
    ( validateReading
    , MeasuringPeriod ( MeasuringPeriod, from, to )
    , Reading ( Reading, value, period )
    , LoadProfileReading ( InvalidReading, ValidReading )
    ) where

import Data.Time

data MeasuringPeriod = MeasuringPeriod { from :: UTCTime, to :: UTCTime }

data Reading = Reading { value :: Double, period :: MeasuringPeriod }

data LoadProfileReading = InvalidReading Reading | ValidReading Reading

validateReading :: Reading -> LoadProfileReading
validateReading r = InvalidReading r
