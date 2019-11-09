module Lib
    ( someFunc
    ) where

import Data.Time

data LoadProfile = LoadProfile { value :: Double, timestamp :: UTCTime }

someFunc :: IO ()
someFunc = putStrLn "someFunc"
