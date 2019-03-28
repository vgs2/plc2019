data Bool = True | False
data Estacao = Inverno | Verao |
               Outono | Primavera

data Temp = Frio | Quente  


clima :: Estacao -> Temp
clima Inverno = Frio
clima _ = Quente

data Shape = Circle Float | Rectangle Float Float | Square Float 

area :: Shape -> Float
area (Circle r) = r * r *3.42
area (Rectangle l1 l2) = l1 * l2 
area (Square l) = l * l

data Expr = Lit Int | Add Expr Expr| Sub Expr Expr

-- showExpr :: Expr -> String
-- showExpr (Lit n) = show n
-- showExpr (Add e1 e2) = "("showExpr e1 ++ " + "   