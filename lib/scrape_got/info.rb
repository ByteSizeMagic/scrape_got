module ScrapeGot
  class Info
    
    attr_accessor :name, :numberOfPages, :released, :characters


    def self.all_books
      @@all_books ||= self.load_books
    end

    def self.load_books
      API.get_books.collect do |book_hash|
        Info.new(book_hash)
      end
    end

    def initialize(attributes = {})
      @name = attributes["name"]
      @released = attributes["released"]
    end
    
    # def self.load_characters

    # end
    
    # def self.load_houses

    # end

   
    
    
  end
end