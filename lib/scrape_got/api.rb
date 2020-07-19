require 'pry'
require 'httparty'

module ScrapeGot
  class API

    def self.get_books
      response = HTTParty.get("https://www.anapioficeandfire.com/api/books?page=1&pageSize=20")
      body = response.body
      @data = JSON.parse(body)
    end

    def self.get_houses
      response = HTTParty.get("https://www.anapioficeandfire.com/api/houses?page=1&pageSize=20")
      body = response.body
      @data = JSON.parse(body)
    end
    
  end
end