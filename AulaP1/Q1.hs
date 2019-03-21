--pega a string e adiciona espacos
encode_espaco :: String -> String
encode_espaco (a:b:[]) | a == b = [a]++[b]
                       | otherwise = [a] ++ " " ++ [b]
encode_espaco (a:b:as) | a == b = [a] ++ encode_espaco([b]++as) 
                       | a /= b = [a] ++ " " ++ encode_espaco([b]++as)

--pega uma string e transforma ela no formato 4w, aplica ela em um dos membros de words(encode_espaco)                       
transformar :: String -> String
transformar (a:as) = show(length (a:as)) ++ [a]

--aplica transformar em uma lista de strings e retorna elas juntas em umas string só
aplicaTransformar :: [String] -> String
aplicaTransformar [] = []
aplicaTransformar (a:as) = transformar a ++ aplicaTransformar as

            
encode_rle :: String -> String
encode_rle a = aplicaTransformar(words(encode_espaco a))