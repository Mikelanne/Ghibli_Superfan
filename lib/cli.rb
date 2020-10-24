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
    puts "\n"

    if user_input == "yes"
      display_movie_list
      ask_user_for_movie_choice
      display_movie_by_director
      puts "\n"
      #I want to add the option to organize the movies - could do this alphabetically or
      #by year or something like that.
      #Maybe this is where I can do it by director?!?!!? ooooo!!!!
      sleep(3)
      puts "\n"

      menu
    else
      puts "Goodbye! Enjoy your Ghibli adventure!"
    end
    # puts "Would you like to see the movies listed by their director?"
    # puts "Type 'yes' or any key to exit."
    # user_input = gets.strip.downcase
    # if user_input == "yes"
    #
    # display_movie_by_director
  end

  def display_movie_list
    Movie.all.each.with_index(1) do |movie, index|
      puts "#{index}. #{movie.title}"
    end
  end

  def ask_user_for_movie_choice
    puts "\n"
    puts "Which movie would you like to explore more?"
    puts "Type the number correlated with your movie choice!"
    puts "\n"
    user_index = gets.strip.to_i - 1
    until user_index.between?(0, Movie.all.length - 1)
      puts "Sorry, there's no movie correlated with that number! Please enter a valid number."
      user_index = gets.strip.to_i - 1
    end
    movie_instance = Movie.all[user_index]

    display_movie_details(movie_instance)
  end

  def display_movie_details(movie)
    puts "Great choice! #{movie.title} is one of the best!"
    puts "#{movie.title} was released in #{movie.release_date}."
    puts "The director is #{movie.director}."
    puts "#{movie.title}'s synopsis is: #{movie.description}."
    puts "#{movie.title} recieved a score of #{movie.rt_score} on Rotten Tomatoes. Not so bad!"
  end

  def display_movie_by_director
      puts "Great! Here are all the movies directed by Hayao Miyazaki:"
      Movie.all.find_all do |movie|
        if movie.director == "Hayao Miyazaki"
          puts movie.title
        end
      end
    end
      puts "Here are all the movies directed by Goro Miyazaki:"
        Movie.all.find_all do |movie|
        if movie.director == "Goro Miyazaki"
          puts movie.title
        end
      end
    end
