class CLI

  def start
    puts "Welcome to the Studio Ghibli Library!"
    API.ghibli_library
    self.menu
  end

  def menu
    puts "Would you like to see a list of Studio Ghibli movies?"
    puts "Type 'yes' or any key to exit."
    user_input = gets.strip.downcase

    if user_input == "yes"
      display_movie_list
      ask_user_for_movie_choice
    end
  end

  def display_movie_list
    Movie.all.each.with_index(1) do |movie, index|
      puts "#{index}. #{movie.title}"
    end
  end

  def ask_user_for_movie_choice
    puts "Which movie would you like to explore more?"
    puts "Type the number correlated with your movie choice!"
    user_index = gets.strip.to_i - 1
    #you are going to need to establish if your user input is valid
    movie_instance = Movie.all[user_index]
    binding.pry
  end

    #if the user says Hayao Miyazaki
    #   if user_input == "Hayao Miyazaki" || "Hayao"
    #     puts "The man, the myth, the legend! Let's take a look at his films."
    #   #now we need to iterate through all the movies, to find the director, and return his movies.
    #     display_Hayao_movies
    #   end
    #   if user_input = "Gorō Miyazaki" || "Goro Miyazaki"
    #     puts "Let's take a look at Goro's films!"
    #     display_Goro_movies
    #   end
    # end
    #
    # def display_Hayao_movies
    #   Movie.all.each do |movie|
    #     if movie.director == "Hayao Miyazaki"
    #       puts movie.title
    #     end
    #   end
    # end
    #
    # def display_Goro_movies
    #   Movie.all.each do |movie|
    #     if movie.director == "Gorō Miyazaki"
    #       puts movie.title
    #     end
    #   end
    # end

end
