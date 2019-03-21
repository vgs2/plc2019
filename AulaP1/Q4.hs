--criar uma funcao que pega a palavra de acordo com a numeracao dela na tupla
--
meuDicionario = [(1, "casa"), (3, "cafe"), (4, "teria"), (6, "era"), (7, "uma")]
teste = "a 1 tinha 3 mas nao 6 7 34, a 1 6 7 sorve4"

type Dicionario = [(Integer, String)]

pegaPalavra :: Integer -> [(Integer, String)] -> String
pegaPalavra _ [] = ""
pegaPalavra numero ((a,b):bs) | numero == a = b
                              | otherwise = pegaPalavra numero bs

decode :: Dicionario -> String -> String
decode dicionario [] = []
decode dicionario (a:as) | a >= '0' &&  a <= '9' = (pegaPalavra (read [a] :: Integer) dicionario) ++ decode dicionario as
                         | otherwise = [a] ++ decode dicionario as