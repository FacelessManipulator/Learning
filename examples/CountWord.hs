import Data.Map as Map
import Data.Char
import Data.Function
import Data.List as List

countWord :: String -> Map String Int
countWord text = Map.fromListWith (+) . List.map (\x -> (x,1)) $ wordList
    where wordList = List.filter (not . any isSpace) . groupBy ((==) `on` isSpace) $ text
