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

  def reviewed_movie?(movie)
    Movie.all.select{|review| review.review == self}
  end

  def rate_movie(movie, rating)
    
  end
end
