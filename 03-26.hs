applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

double :: Int -> Int 
double x = 2*x

iter :: (Int -> Int) -> Int -> Int -> Int
iter f a 1 = f a
iter f a b = iter f (f a) (b-1)
