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
  

#   - `Viewer#viewer`
#   - returns an array of `Review` instances associated with the `Viewer` instance.
  def viewer
    Review.all.select do |single_review|
      single_review.viewer == self 
    end
  end

# - `Viewer#reviewed_movies`
#   - returns an array of `Movie` instances reviewed by the `Viewer` instance.

  def reviewed_movies
    viewer.map do |view|
      view.movie
    end
  end


  # - `Viewer#reviewed_movie?(movie)`
  # - a `Movie` instance is the only argument
  # - returns `true` if the `Viewer` has reviewed this `Movie` 
  # (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise
def reviewed_movie?(movie)
  
end

# - `Viewer#rate_movie(movie, rating)`
#   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, 
#     this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing 
#     `Review` instance

end 
