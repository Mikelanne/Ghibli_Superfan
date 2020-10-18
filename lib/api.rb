class API

  def self.ghibli_library
    url = "https://ghibliapi.herokuapp.com/films"
    # binding.pry
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)

    #title
    #description
    #director
    #rt_score

    #reach the first movie with hash[0]
    #find the director etc by doing movie_one = hash[0]
    #movie_one["director"]
  end
end
