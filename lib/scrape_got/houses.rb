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
    
    def self.print_houses
      Houses.all_houses.each.with_index(1) do |house, index|
        puts "#{index} #{house.name}: #{house.words}"
        puts "Coat of Arms: #{house.coat}"
        puts "Region: #{house.region}"
        puts "-----------------------------------".colorize(:light_yellow)
      end
    end

  end
end