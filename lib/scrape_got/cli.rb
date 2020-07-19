require 'colorize'

module ScrapeGot
  class CLI
    def run
      system("clear")
      greeting
      Books.all_books
      Houses.all_houses
      puts "___________________________________\n".colorize(:light_yellow)
      puts "Please choose an option: "
      @user_input = nil
      menu
      while @user_input != "exit"
        @user_input = gets.strip.downcase
          if @user_input == "1"
            puts "List Books:".colorize(:light_yellow)
            print_books
            display_menu_message
          elsif @user_input == "2"
            puts "List Houses:".colorize(:light_yellow)
            print_houses
            display_menu_message
          else
            display_menu_message
          end
      end
      #binding.pry
      end_program
    end

    def greeting 
      puts "     ... Welcome to ...  \n  I scrape and I know things!\n   ".colorize(:light_yellow)
    end

    def menu 
      puts <<-MENU
      1. List All Books
      2. List 50 Houses
      Enter 'exit' to exit program.
      MENU
    end

    def display_menu_message
      puts "Please enter a menu item number or 'exit' to exit the program"
    end

    def print_books
      Books.all_books.each.with_index(1) do |book, index|
        puts "Book #{index}: #{book.name}, released: #{book.released}"
      end
    end

    def print_houses
      Houses.all_houses.each.with_index(1) do |house, index|
        puts "#{index} #{house.name}: #{house.words}"
        puts "Coat of Arms: #{house.coat}"
        puts "Region: #{house.region}"
        puts "-------------------------------------------------------------------------".colorize(:light_yellow)
        
      end
    end
    
    def end_program
      puts "Thanks for checking out I scrape and I know things, see ya soon!".colorize(:light_yellow)
    end

  end
end