# def translate(word)
#   if word[0] === "a" || word[0] === "e" || word[0] === "i" || word[0] === "o" || word[0] === "u" || word[0] === "y"
#     new_word = word[0..word.length-1]
#     return new_word + "ay"
#   elsif (word[0] != "a" || word[0] != "e" || word[0] != "i" || word[0] != "o" || word[0] != "u" || word[0] != "y") && (word[1] != "a" || word[1] != "e" || word[1] != "i" || word[1] != "o" || word[1] != "u" || word[1] != "y") && (word[2] ==="a" || word[2] === "e" || word[2] === "i" || word[2] === "o" || word[2] === "u" || word[2] === "y")
#     new_word = word[2..word.length-1] + word[0..1] + "ay"
#     return new_word
#   else
#     return word[1..word.length-1] + word[0] + "ay"
#   end
# end

def translate(word)
  vowel = ["a", "e", "i", "o", "u", "y"]
  if vowel.include?(word[0]) === true
    new_word = word[0..word.length-1]
    return new_word + "ay"
  elsif (vowel.include?(word[0]) === false) && (vowel.include?(word[1]) === false) && (vowel.include?(word[2]) === true)
    new_word = word[2..word.length-1] + word[0..1] + "ay"
    return new_word
  else
    return word[1..word.length-1] + word[0] + "ay"
  end

end

puts translate("apple")    #appleay
puts translate("banana")   #ananabay
puts translate("cherry")   #errychay

# a = [ "a", "b", "c" ]
# a.include?("b")   #=> true
# a.include?("z")   #=> false
