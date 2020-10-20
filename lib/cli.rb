class CLI

  def start
    puts "Welcome to the Studio Ghibli Library!"
    API.ghibli_library
    self.menu
  end

  #I want my user to input the name of a director, and I want my app to return a list of titles by that director.
  #Then from that list of titles, the user can get a description and a rt score.
  #is this even possible? Lets find out.

  def menu
    #give user the option to see the directors
    puts "Which iconic director would you like explore today?"
    puts "Type the name of the director or any key to exit."
    user_input = gets.strip.downcase

    #if the user says Hayao Miyazaki
    if user_input == "Hayao Miyazaki" || "Hayao"
      puts "The man, the myth, the legend! Let's take a look at his movies."
      #now we need to iterate through all the movies, to find the director, and return his movies.
    end

    end

end
