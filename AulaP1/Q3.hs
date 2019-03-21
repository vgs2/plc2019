-- 3)
-- type Time = String
-- type Jogo = (Time, Int, Int, Time)

-- Por exemplo: Egito 3 x 1 Russia será representado por (“Egito”, 3, 1, “Russia”)

-- a) Defina uma função que, dado um time e uma lista de jogos, informe quantos gols aquele time fez.
-- gols :: Time -> [Jogo] -> Int


type Time = String
type Jogo = (Time, Int, Int, Time)

lista = [("Sport", 3 , 1 , "Cruzeiro"), ("Nautico", 1 , 3, "Sport")]

--a
golsFeito :: Time -> Jogo -> Int
golsFeito a (b,c,d,e) | a == b = c
                          | a == e = d
                          | otherwise = 0

gols :: Time -> [Jogo] -> Int
gols a [] = 0
gols a (b:bs) = golsFeito a b + gols a bs

--b
golsLevado :: Time -> Jogo -> Int
golsLevado a (b,c,d,e) | a == b = d
                       | a == e = c
                       | otherwise = 0

saldo :: Time -> [Jogo] -> Int
saldo a (b:[]) = golsFeito a b - golsLevado a b
saldo a (b:bs) = golsFeito a b - golsLevado a b + saldo a bs 

--c
pontoPartida :: Time -> Jogo -> Int
pontoPartida a (b,c,d,e) | (a /= b) && (a /= e) = 0
                         | a == b && c == d = 1
                         | a == b && c > d = 3
                         | a == e && c < d = 3
                         | a == e && c == d = 1
                         | otherwise = 0

pontos :: Time -> [Jogo] -> Int
pontos a [] = 0
pontos a (b:bs) = pontoPartida a b + pontos a bs