module ScrapeGot
  class Houses
    
    attr_accessor :name, :coat, :region, :words


    def self.all_houses
      @@all_houses ||= self.load_houses
    end

    def self.load_houses
      API.get_houses.collect do |houses_hash|
        Houses.new(houses_hash)
      end
    end

    def initialize(attributes = {})
      @name = attributes["name"]
      @coat = attributes["coatOfArms"]
      @region = attributes["region"]
      @words = attributes["words"]
    end
    
  end
end