class Movie
  attr_accessor :title, :description, :director, :rt_score, :release_date

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
