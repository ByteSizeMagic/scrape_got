module ScrapeGot
  class Info
    
    attr_accessor :name, :number_of_pages, :released, :coat, :region, :words


    def self.all_books
      @@all_books ||= self.load_books
    end

    def self.all_houses
      @@all_houses ||= self.load_houses
    end

    def self.load_books
      API.get_books.collect do |book_hash|
        Info.new(book_hash)
      end
    end

    def self.load_houses
      API.get_houses.collect do |houses_hash|
        Info.new(houses_hash)
      end
    end

    def initialize(attributes = {})
      @name = attributes["name"]
      @number_of_pages = attributes["numberOfPages"]
      @released = attributes["released"]#.strftime("Released on %m/%d/%Y")
      @coat = attributes["coatOfArms"]
      @region = attributes["region"]
      @words = attributes["words"]
    end
    
    # def self.load_characters

    # end
    
    
  end
end