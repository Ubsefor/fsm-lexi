# Finit State Machine – Haskell

## A small finit state machine, written in haskell

The machine detects, whether entered line belongs to the given below grammar:

- S -> aA | bS
- A -> aS | _

## Building

stack build 

or build with ghc the main source file: app/main.hs

## Running

stack exec

or run the built exec file

or use ghci to load the module



