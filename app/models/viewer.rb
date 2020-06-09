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
    Review.all.select {|review| review.viewer == self}
  end

  def reviewed_movies
    reviews.map {|review| review.movie}
  end

    #returns true if viewer has reviewed movie
    #essentially here we want an if statement
    #if self review movie (we defined method earlier) return true
    #else returns false
  def reviewed_movie?(movie)
      #.reviewed_movies
  
  end

  #so here i was able to create a way for the Viewer to leave a new
  #review, however i have to figure out how to assign it
  #to to the existing review
  
  def rate_movie(movie,rating)
    Review.new(movie,self,rating)
  end
  
end
