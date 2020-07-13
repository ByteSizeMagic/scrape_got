class ScrapeGot::CLI
  def run
    system("clear")
    greeting
    puts "Please choose an option: "
    @user_input = nil
    menu
    while @user_input != "exit"
      @user_input = gets.strip.downcase
        if @user_input == "1"
          print_articles
        elsif @user_input == "2"
          "puts more here"
        elsif @user_input == "exit"
          break
        else
          puts "Please enter a menu item number or 'exit' to exit the program"
        end
    end
    binding.pry
    end_program
  end

  def greeting 
    puts "Welcome to I scrape and I know things!"
    
  end

  def menu 
    puts <<-MENU
    1. List Articles
    2. To see next page of articles.
    Enter 'exit' to exit program.
    MENU
  end
  
  def end_program
    puts "Thanks for checking out I scrape and I know things, see ya soon!"
  end


end