require 'colorize'

module ScrapeGot
  class CLI
    
    def run
      system("clear")
      greeting
      Books.all_books
      Houses.all_houses
      
      @user_input = nil
      menu
        while @user_input != "exit"
          @user_input = gets.strip.downcase
            if @user_input == "1"
              puts "List Books:".colorize(:light_yellow)
              Books.print_books
              menu
            elsif @user_input == "2"
              puts "List Houses:".colorize(:light_yellow)
              Houses.print_houses
              menu
            else
              @user_input == "exit" ? break : display_menu_message
            end
          end
      end_program
    end

    def greeting 
      puts "     ... Welcome to ...  \n  I scrape and I know things!\n   ".colorize(:light_yellow)
    end

    def menu 
      display_line
      puts "Please choose an option: "
      puts <<-MENU
      1. List All Books
      2. List 20 Houses
      MENU
      display_menu_message
    end

    def display_menu_message
      puts "Please enter a menu item number or type " + "exit".colorize(:red) + " to exit the program"
    end

    def display_line
      puts "___________________________________\n".colorize(:light_yellow)
    end
    
    def end_program
      puts "Thanks for checking out I scrape and I know things, see ya soon!".colorize(:light_yellow)
      display_line
    end

  end
end