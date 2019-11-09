module Lib
    ( validateReading
    , MeasuringPeriod ( MeasuringPeriod, from, to )
    , Reading ( Reading, value, period )
    , LoadProfileReading ( UnverifiedReading, InvalidReading, ValidReading )
    ) where

import Data.Time

data MeasuringPeriod = MeasuringPeriod { from :: UTCTime, to :: UTCTime }

data Reading = Reading { value :: Double, period :: MeasuringPeriod }

data LoadProfileReading = UnverifiedReading Reading | InvalidReading Reading | ValidReading Reading

validateReading :: LoadProfileReading -> LoadProfileReading
validateReading lp = lp
