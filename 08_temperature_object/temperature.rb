#Creates a Temperature object and allows you to pass in
#a hash, giving you the option to calculate a temperature
#in Celsius or Fahrenheit. 
class Temperature

  def Temperature.from_celsius(celsius)
    Temperature.new(c: celsius)
  end

  def Temperature.from_fahrenheit(fahrenheit)
    Temperature.new(f: fahrenheit)
  end

  def initialize(options = {})
    @fahrenheit = options[:f] || options[:c] * (9/5.to_f) + 32
    @celsius = options[:c] || (options[:f] - 32) * (5/9.to_f)
  end

  def in_celsius
    @celsius
  end

  def in_fahrenheit
    @fahrenheit
  end



 #Creates ctof and ftoc class methods that convert
 #Celsius to Fahrenheit and vice versa. 
  def Temperature.ctof(celsius)
    celsius * (9/5.to_f) + 32
  end

  def Temperature.ftoc(fahrenheit)
    (fahrenheit - 32) * (5/9.to_f)
  end
end


#Creates two classes that inherit from the Temperature
#class.
class Celsius < Temperature

  def initialize(celsius)
    super(c: celsius)
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit)
    super(f: fahrenheit)
  end
end
