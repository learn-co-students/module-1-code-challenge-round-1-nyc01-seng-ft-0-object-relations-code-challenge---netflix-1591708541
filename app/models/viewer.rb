class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews 
    Review.all.select {|review| review.viewer.username == self}
  end 

  def reviewed_movies
    Review.all.select {|review| review.movie == self}
  end 

  def reviewed_movie?(movie)
    reviews.each do |movie_review|
      if movie_review.movie == movie 
        true
      else 
        false 
      end 
    end 
  end 

  def rate_movie(movie, rating)
    reviews.each do |movie_review|
      if (movie_review.movie != movie) && (movie_review.rating != rating ) 
        Rating.new(self,movie,rating)
      else
        movie_review.rating = rating 
      end 
    end 
  end 

  
  
end
