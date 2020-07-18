require 'pry'
require 'httparty'

module ScrapeGot
  class API
    # API_HOST = "https://www.anapioficeandfire.com/api"
    # BOOK_PATH = "/books?page=1&pageSize=50"
    # CHARACTER_PATH = "/characters?page=1&pageSize=50"
    # HOUSE_PATH = "/houses?page=1&pageSize=50"



    def self.get_books
      response = HTTParty.get("https://www.anapioficeandfire.com/api/books?page=1&pageSize=50")
      body = response.body
      @data = JSON.parse(body)
    end

    # def get_characters
    #   response = HTTParty.get("https://www.anapioficeandfire.com/api/characters?page=1&pageSize=50")
    #   body = response.body
    #   @data = JSON.parse(body)
    # end
    
    # def get_houses
    #   response = HTTParty.get("https://www.anapioficeandfire.com/api/houses?page=1&pageSize=50")
    #   body = response.body
    #   @data = JSON.parse(body)
    # end
  end
end