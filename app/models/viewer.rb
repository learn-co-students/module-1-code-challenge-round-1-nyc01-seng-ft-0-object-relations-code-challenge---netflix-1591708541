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

  # def username=(username)
  #   @username = username
  # end

  # def username
  #   @username
  # end

  def reviews
    Review.all.select{|rev_obj| rev_obj.viewer == self}
  end

  def reviewed_movies
    self.reviews.map{|rev_obj| rev_obj.movie}
  end

  def reviewed_movie?(movie)
    if movie.reviewers.include?(self)
      return true
    else
      return false
    end
  end
  
  def find_review(movie)
    self.reviews.find{|rev_obj| rev_obj.movie == movie}
  end

  def rate_movie(movie,rating)
    if self.reviewed_movie?(movie) == true
      self.find_review.rating = rating
    else
    Review.new(self,movie,rating)
    end
  end

end



# #### Viewer

      # - `Viewer#reviewed_movie?(movie)`
      #   - a `Movie` instance is the only argument
      #   - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise
      # - `Viewer#rate_movie(movie, rating)`
      #   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance

# #### Viewer

        # - `Viewer#reviews`
        #   - returns an array of `Review` instances associated with the `Viewer` instance.
        # - `Viewer#reviewed_movies`
        #   - returns an array of `Movie` instances reviewed by the `Viewer` instance.

# #### Viewer

        # - `Viewer#initialize(username)`
        #   - `Viewer` is initialized with a username (string)
        #   - username **can be** changed after the Viewer is initialized
        # - `Viewer#username`
        #   - returns the Viewer's username
        # - `Viewer.all`
        #   - returns an array of all the Viewer instances that have been initialized
