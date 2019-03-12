-- 1) Crie uma função que, dada uma string x e um inteiro y, adiciona y espaços entre
-- os caracteres da string
--pega o primeiro membro, adiciona y espacos e chama q1 com as

gerarEspacos :: Int -> String
gerarEspacos 0 = []
gerarEspacos x = " " ++ gerarEspacos (x-1)

questao1 :: String -> Int -> String
--questao1 [] _ = []
questao1 (a:[]) x = [a]
questao1 (a:as) x = [a] ++ gerarEspacos x ++ questao1 as x

questao2
quantidade :: Int -> Int -> Int
quantidade x y = | ((x / y) == 11)

--questao3
limpaUm :: [Int] -> [Int]
limpaUm [] = []
limpaUm (a:as) = [(a - 1)] ++ limpaUm as

