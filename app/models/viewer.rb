class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end
  
  def reviews
    Review.all.map {|movie| movie.review} 
  end

  def reviewed_movies
    Movie.all.select {|movie| movie.review == self}
  end
end
