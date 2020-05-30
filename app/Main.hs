module Main where

-- States of the machine:
data State = S | A | OK | ERR

-- Main function uses do-notation to get the input
main :: IO ()
main = do
    inpt <- getLine
    print (automat S inpt)


-- Function of a FSM – recursevely call itself with different
-- conditions until no more readable chars given, or error
automat :: State -> String -> Bool

-- State "S"
automat S ('a':xs) = automat A xs
automat S _        = automat ERR []

-- State "A"
automat A ('a':xs) = automat A xs
automat A ('b':xs) = automat S xs
automat A []       = automat OK []
automat A _        = automat ERR []

-- Returning from function
automat OK  _      = True
automat ERR _      = False