module MyLib (someFunc) where

import Text.Megaparsec
import Text.Megaparsec.Char
import Data.Void

type Parser = Parsec Void String

parse_a :: Parser Char
parse_a = char 'a'

parse_b :: Parser Char
parse_b = char 'b'

parse_ab :: Parser String
parse_ab = do
  a <- parse_a
  b <- parse_b
  return [a, b]

parse_cat :: Parser String
parse_cat = do
  a <- parse_a
  b <- symbolChar
  c <- upperChar
  d <- digitChar
  return [a, b, c, d]

someFunc :: IO ()
someFunc = putStrLn "someFunc"
