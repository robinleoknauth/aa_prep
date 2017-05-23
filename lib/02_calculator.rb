def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def divide(a, b)
  a / b
end

def power(a, b)
  a ** b
end

def factorial(n)
  return 1 if n == 0
  n * factorial(n - 1)
end

def sum(arr)
  return 0 if arr.empty?
  arr.reduce(:+)
end
