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
    Review.all.select { |review| review.viewer == self}
  end 

  def reviewed_movies
    reviews.map do |review| 
      review.movie
    end 
  end 

  def reviewed_movie?(movie)
    reviews.any? do |review| 
      review.movie == movie  
    end 
  end 

  def rate_movies(movie, rating) 
    if reviewed_movie?(movie)
    else 
      Review.new(self, movie, rating)
   end 
  end 
end

# - `Viewer#rate_movie(movie, rating)`
#   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance