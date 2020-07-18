module ScrapeGot
  class CLI
    def run
      system("clear")
      greeting
      Info.all_books
      puts "___________________________\nPlease choose an option: "
      @user_input = nil
      menu
      while @user_input != "exit"
        @user_input = gets.strip.downcase
          if @user_input == "1"
            puts "List Books:"
            print_books
            display_menu_message
          elsif @user_input == "2"
            puts "You chose 2"
          else
            display_menu_message
          end
      end
      binding.pry
      end_program
    end

    def greeting 
      puts "   ... Welcome to ... \nI scrape and I know things!\n   "
    end

    def menu 
      puts <<-MENU
      1. List Books
      2. To see next page of articles.
      Enter 'exit' to exit program.
      MENU
    end

    def display_menu_message
      puts "Please enter a menu item number or 'exit' to exit the program"
    end

    def print_books
      Info.all_books.each.with_index(1) do |book, index|
        puts "Book #{index}: #{book.name}, released: #{book.released}"
      end
    end
    
    def end_program
      puts "Thanks for checking out I scrape and I know things, see ya soon!"
    end


  end
end