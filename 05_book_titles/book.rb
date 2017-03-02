class Book
  attr_accessor :title
  def title=(book_title)
    new_title = book_title.split
    little_words = ["a", "the", "an", "and", "in", "of"]
    new_title.collect! do |x|
      if new_title[0] === x
        x.capitalize
      else
        unless little_words.include?(x)
          x.capitalize
        else
          x
        end
      end
    end
    @title = new_title.join(" ")
  end
end
