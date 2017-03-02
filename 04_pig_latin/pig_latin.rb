#write your code here
def translate(text)
  vowel = ["a", "e", "i", "o", "u", "y"]
  arr = text.split
  arr.collect! do |word|
    if vowel.include?(word[0]) === true
      word_vowel = word[0...word.length] + "ay"
    elsif (vowel.include?(word[0]) === false) && (vowel.include?(word[1]) === false) && (vowel.include?(word[2]) === true)
      word_two_consonant = word[2...word.length] + word[0..1] + "ay"
    elsif (vowel.include?(word[0]) === false) && (vowel.include?(word[1]) === false) && (vowel.include?(word[2]) === false) && (vowel.include?(word[3]) === true)
      word_two_consonant = word[3...word.length] + word[0..2] + "ay"
    elsif word.include?("qu") === true
      if word[0..1] === "qu"
        word.slice!(/^qu/)
        ending = "quay"
        word_with_qu = word + "quay"
      elsif vowel.include?(word[0]) === false
        word_1 = word[3...word.length]
        word_1.slice!(/^qu/)
        word_with_qu = word_1 + word[0..2] + "quay"
      end
    else
      word_consonant = word[1...word.length] + word[0] + "ay"
   end
  end
  arr.join(" ")
end

# Przykładowe rozwiązanie 1:
# def translate(s)
#   vowels = ['a','e','i','o','u','y']
#   s.split.map do |word|
#     i = 0
#     while not vowel? word[i,1]
#       if ( word[i,2] == 'qu')
#         i += 2
#       else
#         i += 1
#       end
#     end
#     word[i..-1] + word[0,i] + 'ay'
#   end.join(' ')
# end
#
# def vowel? c
#   vowels.include? c
# end

# Przykładowe rozwiązanie 2:
# module PigLatinTranslator
#
#     def translate(s)
#       puts "english phrase is: "+s
#       words = s.split
#       pigified = []
#
#       for word in words
#         if  word[/^[aeiou]/]
#           word = word+"ay"
#         else
#           if word[/^[qu]/]
#            word.slice!(/^qu/)
#            ending = "quay"
#           else
#            ending = word.slice!(0...(word.index(/[aeiou]/,1)))+"ay"
#           end
#           word = word << ending
#         end
#         pigified << word
#       end
#       puts "pig latin phrase is: "+pigified.join(" ")
#       return pigified.join(" ")
#     end
# end
