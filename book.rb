

class Book
    # has many review instances
    # has_many :reviews
    attr_accessor :title, :author, :pages, :published, :id

    # @@count = 0
    @@all = []

    def initialize(title, author, pages, published)
        @title = title
        @author = author
        @pages = pages
        @published = published
        # @@count += 1
        @@all << self
        @id = @@all.length
    end

    def self.count
        @@all.length
    end

    def display_book
        puts "Title: #{@title}"
        puts "Author: #{@author}"
        puts "Pages: #{@pages}"
        puts "Published: #{@published}"
    end

    def reviews
        Review.all.filter {|review| review.book_id == @id}
    end

    # def title
    #     @title
    # end

    # def title=(title)
    #     @title = title
    # end

    def self.all
        @@all
    end

end

