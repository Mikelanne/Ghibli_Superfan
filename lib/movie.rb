class Movie
  attr_accessor :title, :description, :director, :rt_score

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end 

end
