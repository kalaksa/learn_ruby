#write your code here
def echo(word)
  "#{word}"
end
def shout(word)
  "#{word.upcase}"
end
def repeat(word,times = 2)
  ([word] * times).join(" ")
end

def start_of_word(word,x)
  first_letters = ''
  for num in 0...x
    first_letters << word[num]
  end
  return first_letters
end

# def first_word(text)
#   first_word = ''
#   i = 0
#   loop do
#     break if text[i] === ' '
#       first_word << text[i]
#       i += 1
#   end
#   return first_word
# end

# def first_word(text)
#   first_word = ''
#   for num in 0...text.length
#     if text[num] === ' '
#       return first_word
#     else
#       first_word << text[num]
#     end
#   end
#   first_word
# end

def first_word(text)
  first_word = ''
  for num in 0...text.length
    break if text[num] === ' '
    first_word << text[num]
  end
  first_word
end

def titleize(text)
  text.capitalize!
  arr = text.split
  arr.collect! do |word|
    unless word === "and" || word === "or" || word === "in" || word === "over" || word === "the"
      word.capitalize
    else
      word
    end
  end
  arr.join(" ")
end


# ['a', 'b', 'c'].collect{|letter| letter.capitalize}
# => ["A", "B", "C"]
