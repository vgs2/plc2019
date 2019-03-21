--funcao que pega a primeira palavra da string
pegarPrimeira :: String -> String
pegarPrimeira (a:as) | a == ' ' = []
                     | a == ';' = []
                     | as == [] = []
                     | otherwise = [a] ++ pegarPrimeira as
--funcao que exclui a primeira palavra da string e retorna o resto
pegarResto :: String -> String
pegarResto (a:as) 
    | a == ' '  = as
    | a == ';' = as
    -- | a /= ';' = [] ++ pegarResto as
    | otherwise = [] ++ pegarResto as

--pega uma string e retorna uma lista de tuplas com as informacoes da string
megaTuplacion :: String -> [(String, String, String, Double)]
megaTuplacion [] = []
megaTuplacion x = [(pegarPrimeira x, pegarPrimeira(pegarResto x), pegarPrimeira(pegarResto(pegarResto x)), (read(pegarPrimeira(pegarResto(pegarResto(pegarResto x)))) :: Double))] ++ megaTuplacion(pegarResto(pegarResto(pegarResto(pegarResto x))))

logCartao = "14 JAN;Amazon;40.32;15 JAN;Uber;14.84;25 JAN;Uber;34.24;02 FEV;Spotify;8.50;06 FEV;Uber;6.94;05 MAR;Burger;29.90;10 MAR;Burger;24.99;15 MAR;UCI;19.00;08 ABR;Itunes;3.50;13 ABR;Picpay;20.00;"

--soma todos os gastos de um mes
somatorio :: String -> [(String, String, String, Double)] -> Double
somatorio mes [] = 0
somatorio mes ((a,b,c,d):as) | mes == b = d + somatorio mes as
                             | otherwise = 0 + somatorio mes as
logMes :: String -> String -> Double
logMes mes log = somatorio mes (megaTuplacion log)
-- somatorio "JAN" [("bla", "JAN", "bla", 50.02),("bla", "JAN", "bla", 50.02),("bla", "FEV", "bla", 50.02)]