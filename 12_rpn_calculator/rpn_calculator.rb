#Creates a Reverse Polish Notation Calculator. 

class RPNCalculator

	attr_accessor :stack

	def initialize(stack = [])
		@stack = stack
	end

	def value
		stack[stack.length - 1]
	end

	def push(value)
		stack << value.to_f
	end

	def plus
		stack << (pop + pop)
	end

	def minus
		stack << (pop - pop)
	end

	def times
		stack << (pop * pop)
	end

	def divide
		stack << (pop / pop)
	end

	def pop
		num = stack.pop
		if num.nil? 
			raise "calculator is empty"
		end
		num
	end

	def tokens(n)
		token = []
		n.split.collect do |x|
			if x =~ /[- + \/ *]/
				token << :"#{x}"
			else
				token << x.to_f
			end
		end
		token
	end

	def evaluate(string)

		tokens(string).each do |x|
			if x == :+
				plus
			elsif x == :-
				minus
			elsif x == :/
				divide
			elsif x == :*
				times
			else
				push(x)
			end
		end
		value
	end

end 

