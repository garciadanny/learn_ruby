#Simon Says.

#Echos the word supplied.
def echo(word)
 word
end

#Returns the word in all uppercase. Shouts it!
def shout(wordy)
 wordy.upcase
end

#Repeats the word n amount of times. 
def repeat(word, times = 2)
 ((word + " ") * times).chop
end

#Accepts a word and length of letters to return.
def start_of_word(word, num)
 output = ""
 letters = ""
 letters = word.scan(/\w/)
 letters = letters[0, num]
 letters.each do |x|
  output += x
 end
 output
end

#Returns the first word of the string. 
def first_word(words)
 word = ""
 word = words.scan(/\w+/)
 word = word[0]
end

#Properly capitalizes a title. 
def titleize(words)

 words = words.downcase.split(" ")

 #no_capital = words that should not be capitalized.
 #Unless they are the first or last words of the title.
 #These include Articles, Prepositions, Conjunctions, 
 #and the Particle 'to'.
 #See: 
 #http://grammartips.homestead.com/caps.html
 #http://www.englishclub.com/grammar/prepositions-list.htm
 #http://www.english-grammar-revolution.com/list-of-conjunctions.html

 no_capital = %w[the a an and aboard about above across after
                 against along although amid among anti around as
                 at because before behind below beneath beside
                 besides between beyond both but by concerning
                 considering despite down during except excepting
                 excluding following for from if in inside into like
                 minus near nor of off on once onto opposite or outside over
	         past per plus regarding round save since so than that till 
	         though through to toward towards under underneath
	         unlike unless until up upon versus via when whenever 
	         wherever while with within without yet] 

 title_case = []
 i = 0

  while i < words.length
    if i == 0 || i == words.length - 1
     title_case << words[i].capitalize
    elsif !no_capital.include?(words[i])
     title_case << words[i].capitalize
    else
     title_case << words[i]
    end
   i += 1
  end

  title_case = title_case.join(" ")
end