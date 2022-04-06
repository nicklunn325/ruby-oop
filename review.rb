class Review
    #  instance of review belongs to book instance
    # belongs_to :book
    attr_accessor :content, :rating, :reviewer, :book_id

    @@all = []
    def initialize(content, rating, reviewer, book_id)
        @content = content
        @rating = rating
        @reviewer = reviewer
        @book_id = book_id
        @@all << self
    end

    # def book
    #     Book.all.find {|book| book.id == @book_id}
    # end

    def self.all
        @@all
    end
end