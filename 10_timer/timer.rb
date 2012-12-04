#Creates a Timer object that translates n number of 
#seconds to an hours:minutes:seconds format. 

class Timer

  attr_accessor :seconds

  def initialize(seconds = 0)
    @seconds = seconds
  end

  def time_string

    hours   = (@seconds / 3600)
    minutes = (@seconds % 3600) / 60
    seconds = (@seconds % 60)

    [padded(hours), padded(minutes), padded(seconds)].join(":")
  end

  #Helper method:

  def padded(number)

    if number < 10
      "0#{number}"
    else
      "#{number}"
    end
  end

end


  







