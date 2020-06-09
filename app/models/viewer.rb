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

    #what i did here was access the class we are in and go through
    #it to see if the viewer has reviewed the movie by calling on a 
    #previous function we used earlier to narrow down results
  def reviewed_movie?(movie)
      @@all.all.select {|viewer| viewer.reviewed_movies == movie}
  end

  #so here i was able to create a way for the Viewer to leave a new
  #review, however i have to figure out how to assign it
  #to to the existing review. I think what i would do is an if statement 
  #so if self.movie does not qual reviewed movie then allow user to
  #enter new review, then if viewer has already reviewed it we would
  #shovel it into the existing review instance
  
  def rate_movie(movie,rating)
    Review.new(movie,self,rating)
  end
  
end
