logCartao = "14 JAN;Amazon;40.32;15 JAN;Uber;14.84;25 JAN;Uber;34.24;02 FEV;Spotify;8.50;06 FEV;Uber;6.94;05 MAR;Burger;29.90;10 MAR;Burger;24.99;15 MAR;UCI;19.00;08 ABR;Itunes;3.50;13 ABR;Picpay;20.00;"
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

--pega o valor minimo da lista de tuplas
pegaMin :: [(String, String, String, Double)] -> Double
pegaMin [] = 9999999999999
pegaMin ((a, b, c , d):as) | d < pegaMin as = d
                           | otherwise = pegaMin as

--pegar o valor maximo                           
pegaMax :: [(String, String, String, Double)] -> Double
pegaMax [] = 0
pegaMax ((a, b, c, d):as) | d > pegaMax as = d
                          | otherwise = pegaMax as                        
                          
minMaxCartao :: String -> (Double, Double)
minMaxCartao log = (pegaMin(megaTuplacion(log)), pegaMax(megaTuplacion(log)))