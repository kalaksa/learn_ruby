def titleize(text)
  arr = text.split
  arr.collect! do |word|
    unless word === "and" || word === "or" || word === "in"
      word.capitalize
    else
      word
    end
  end
  arr.join(" ")
end
#
# def titleize(text)
#   little_words = ["and", "or", "the", "over", "to", "a", "but", "in"]
#   arr = text.split
#   arr.collect! do |word|
#     unless word.include?(little_words.each.to_s)
#       word.capitalize
#     else
#       word
#     end
#   end
#   arr.join(" ")
# end


puts titleize("hello world, how are the you? Brohers in arms")




























# def titleize phrase
#   phrase.capitalize!
#   array = phrase.split
#   array.collect! do |x|
#     unless x == "and" || x == "over" || x == "the"
#       x.capitalize
#     else
#       x
#     end
#   end
#   array.join(" ")
# end
