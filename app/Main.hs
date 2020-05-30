module Main where

-- S -> aA | bS
-- A -> aS | _
 
data State = S | A | OK | ERR

main :: IO ()
main = do
    inpt <- getLine
    print (automat S inpt)


automat :: State -> String -> Bool
automat S ('a':xs) = automat A xs
automat S _        = automat ERR []

automat A ('a':xs) = automat A xs
automat A ('b':xs) = automat S xs
automat A []       = automat OK []
automat A _        = automat ERR []

automat OK  _      = True
automat ERR _      = False