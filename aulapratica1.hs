separarString :: (String, String) -> (String, String)
separarString (x, a:as) | a == ' ' = (x, as)
                        | otherwise = separarString (x++[a], as)

tuplation :: String -> (String, String, String, String)
tuplation x = (fst(separarString ("", x)), fst(separarString("",snd(separarString ("", x)))), fst(separarString("",snd(separarString("",snd(separarString ("", x)))))), snd(separarString("",snd(separarString("",snd(separarString ("", x)))))))


pegarPrimeira :: String -> String
pegarPrimeira (a:as) | a == ' ' = []
                     | a == ';' = []
                     | as == [] = []
                     | otherwise = [a] ++ pegarPrimeira as

pegarResto :: String -> String
pegarResto (a:as) 
    | a == ' '  = as
    | a == ';' = as
    -- | a /= ';' = [] ++ pegarResto as
    | otherwise = [] ++ pegarResto as


tuplacion :: String -> (String, String, String, String)
tuplacion x = (pegarPrimeira x, pegarPrimeira(pegarResto x), pegarPrimeira(pegarResto(pegarResto x)), pegarPrimeira(pegarResto(pegarResto(pegarResto x))))

megaTuplacion :: String -> [(String, String, String, String)]
megaTuplacion [] = []
megaTuplacion x = [(pegarPrimeira x, pegarPrimeira(pegarResto x), pegarPrimeira(pegarResto(pegarResto x)), pegarPrimeira(pegarResto(pegarResto(pegarResto x))))] ++ megaTuplacion(pegarResto(pegarResto(pegarResto(pegarResto x))))

logCartao = "14 JAN;Amazon;40.32;15 JAN;Uber;14.84;25 JAN;Uber;34.24;02 FEV;Spotify;8.50;06 FEV;Uber;6.94;05 MAR;Burger;29.90;10 MAR;Burger;24.99;15 MAR;UCI;19.00;08 ABR;Itunes;3.50;13 ABR;Picpay;20.00;"

-- logMes :: String -> String -> Double
-- (pegarPrimeira logCartao, pegarPrimeira(pegarResto logCartao), pegarPrimeira(pegarResto(pegarResto logCartao)), pegarPrimeira(pegarResto(pegarResto(pegarResto logCartao))))
-- tuplacion(pegarResto(pegarResto(pegarResto(pegarResto logCartao))))