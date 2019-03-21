--3w em www
recria :: Char -> Int -> String
recria a 0 = ""
recria a b = [a] ++ recria a (b-1)

decode_rle :: String -> String
decode_rle (a:b:[]) = (recria b (read [a] :: Int))
decode_rle (a:b:as) = (recria b (read [a] :: Int)) ++ decode_rle as
