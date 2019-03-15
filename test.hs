-- fat :: Int -> Int
-- fat 0 = 1
-- fat 1 = 1
-- fat n = fat (n-1) * n

-- addEspacos :: Int -> String
-- addEspacos 0 = ""
-- addEspacos 1 = " "
-- addEspacos n = " " ++ addEspacos (n-1)

-- paraDireita :: Int -> String -> String
-- paraDireita n str = addEspacos n ++ str

-- allEqual :: Integer -> Integer -> Integer -> Bool
-- allEqual n m p = (n == p) && (n == m)

-- all4Equal :: Integer -> Integer -> Integer -> Integer -> Bool
-- all4Equal q w e r = allEqual q w e && allEqual q w r

-- equalCount :: Integer -> Integer -> Integer -> Integer
-- equalCount q w e | (q == w) && (q == e) = 3
--                  | (q /= w) && (q /= e) && (e /= w) = 0
--                  | otherwise = 2

-- sumList :: [Int] -> Int
-- sumList [] = 0
-- sumList (a:as) = a + sumList as

-- sumListOld :: [Int] -> Int
-- sumListOld x | x == [] = 0
--              | otherwise = head x + sumList (tail x)

-- double :: [Int] -> [Int]
-- double [] = []
-- double (a:as) = [2*a] ++ double as

-- member :: [Int] -> Int -> Bool
-- member [] x = False
-- member (a:as) x | x == a = True
--                 | otherwise = member as x


-- --AULA 12/03                
-- ----[x*x | x <- [1..100], x > 20, x < 30]


-- type Pessoa = String
-- type Livro = String
-- type BancoDados = [(Pessoa, Livro)]

-- baseExemplo :: BancoDados
-- baseExemplo = [("Sergio","O Senhor dos Aneis"),
--                ("Andre","Duna"),
--                ("Fernando","Jonathan Strange & Mr.Norrell"),
--                ("Fernando","Duna")]

-- --doubleList xs = [2*a|a <- xs]

-- --compara pessoa com a primeira entrada do banco de dados
-- livros :: BancoDados -> Pessoa -> [Livro]               
-- livros xs p =  [b | (a,b) <- xs, a == p]

-- emprestimos :: BancoDados -> Livro ->[Pessoa]
-- emprestimos xs l = [a | (a,b) <- xs, b == l]

-- quickSort :: [Int] -> [Int]
-- quickSort [] = []
-- quickSort [x] = [x]
-- quickSort (a:as) = quickSort[x | x <- as, x <= a] ++ [a] ++ quickSort[x | x <- as, x > a]

-- applyTwice :: (a -> a) -> a -> a
-- applyTwice f x = f (f x)

-- fatorial :: Int -> Int
-- fatorial 0 = 1
-- fatorial n = n * fatorial(n-1)

--
