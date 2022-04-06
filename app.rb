require 'pry'
require_relative 'book'
require_relative 'review'

book_one = Book.new("Harry Potter", "JK Rowling", 400, "July 31, 1997")
book_two = Book.new("Lord of the Rings", "JRR Tolkien", 700, "July 31, 1997")
book_three = Book.new("Twighlight", "Josephine", 400, "July 31, 1997")

review_one = Review.new("GREAT BOOK", "5", "John", book_one.id)
review_two = Review.new("TERRIBLE BOOK", "1", "Jane", book_three.id)
review_three = Review.new("okay", "3", "Bob", book_two.id)
review_four = Review.new("SO GOOD", "5", "Nick", book_one.id)
binding.pry
