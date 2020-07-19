module ScrapeGot
  class Books
    
    attr_accessor :name, :number_of_pages, :released


    def self.all_books
      @@all_books ||= self.load_books
    end

    def self.load_books
      API.get_books.collect do |book_hash|
        Books.new(book_hash)
      end
    end

    def initialize(attributes = {})
      @name = attributes["name"]
      @number_of_pages = attributes["numberOfPages"]
      @released = attributes["released"]
    end
  end
end