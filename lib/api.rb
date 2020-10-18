class API

  def self.ghibli_library
    url = "https://ghibliapi.herokuapp.com/films"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
      hash.each do |movie_hash|
        movie = Movie.new
        movie.title = movie_hash["title"]
        movie.description = movie_hash["description"]
        movie.director = movie_hash["director"]
        movie.rt_score = movie_hash["rt_score"]
      end
  end
end
