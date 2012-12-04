#Adds methods to the Array class. 
#Allows you to sum and square integers in an array.

class Array

  def sum
    output = 0
    self.each do |n|
      output += n 
    end
    output
  end

  def square
  	output = []
  	self.each do |n|
  		output << (n**2)
  	end
  	output
  end

  def square!
  	self.collect! do |n|
  		(n**2)
  	end
  end

end
