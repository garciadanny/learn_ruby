#Calculator

#The `add` method.

def add(x, y)
 x + y
end

#The `subtract` method.

def subtract(x, y)
 x - y
end

#The `sum` method.
#Sums up an array of parameters.

def sum(x)
 solution = 0
 x.each do |num|
  solution += num
 end
 solution
end

#Extra Credit Test-Driving Bonus:

#Multiply

def multiply(num)
 product = 1
 num.each do |x|
  product *= x
 end
 product
end

#Power

def power(x, y)
 x**y
end

#Factorials

def factorial(x)
 solution = 1
 if x > 0
  x.downto(1) do |num|
  solution *= num
 end
 elsif x == 0
  solution = 1
 else
  solution = "undefined"
 end
 solution
end
