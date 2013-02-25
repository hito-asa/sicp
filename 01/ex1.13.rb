#!env ruby

def fib(n)
  if (n <= 1)
    n
  else
    fib(n - 1) + fib(n - 2)
  end
end

p = (1 + Math.sqrt(5)) / 2

