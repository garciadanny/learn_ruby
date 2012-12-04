#Reverses the string supplied by the block. 

def reverser
 words = yield
 output = []

 words.split.map do |word|
  output << word.reverse
 end
 output.join(" ")
end

#Adds n to the value supplied by the block. 

def adder(num = 1)
 yield + num
end

#Executes the block and repeats it n times. 

def repeater(num = 1)
 num.times do 
  yield
 end
end