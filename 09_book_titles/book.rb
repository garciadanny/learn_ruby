#Properly capitalizes book titles. 
#Manually wrote the setter method to add rules
#that properly capitalized book titles. 

class Book
  
  attr_reader :title

  def title=(some_title)

    dont_capitalize = %w[the a an and in of]
    
    words = some_title.downcase.split(" ")
    title_case = []
    i = 0

    while i < words.length 
      if i == 0 
        title_case << words[i].capitalize
      elsif !dont_capitalize.include?(words[i])
        title_case << words[i].capitalize
      else
        title_case << words[i]
      end
      i+=1
    end
    @title = title_case.join(" ")
  end
end


#Another way I could have solved this problem: 

class Book

  attr_reader :title

  def title=(some_title)
    
    dont_capitalize = %w[the a an and in of]
    title_case = some_title.split(" ")
    
    title_case = 
      [title_case[0].capitalize] +
      title_case[1..-1].collect do |word|
        if !dont_capitalize.include?(word)
          word.capitalize
        else
          word
        end
      end
      @title = title_case.join(" ")
  end
end


