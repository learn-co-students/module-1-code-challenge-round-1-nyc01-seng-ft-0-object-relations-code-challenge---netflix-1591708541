# A `Movie` has many `Review`s. A `Viewer` has many `Review`s. A `Review` belongs to a `Viewer` and belongs to a `Movie`.
# `Viewer` - `Movie` is a many to many relationship.

# Deliverables use the notation `#` for instance methods, and `.` for class methods.

#------------------------------------------------------------------------


  # - `Viewer#initialize(username)`
  #   - `Viewer` is initialized with a username (string)
  #   - username **can be** changed after the Viewer is initialized

  # - `Viewer#username`
  #   - returns the Viewer's username

  # - `Viewer.all`
  #   - returns an array of all the Viewer instances that have been initialized

  # - `Viewer#reviews`
  #   - returns an array of `Review` instances associated with the `Viewer` instance.

  # - `Viewer#reviewed_movies`
  #   - returns an array of `Movie` instances reviewed by the `Viewer` instance.

  # - `Viewer#reviewed_movie?(movie)`
  #   - a `Movie` instance is the only argument
  #   - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review`     instance that has this `Viewer` and `Movie`), returns `false` otherwise

# - `Viewer#rate_movie(movie, rating)`
#   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance

#------------------------------------------------------------------------

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

  # returns the Viewer's username
  def viewer_username
    self
  end

  # returns an array of `Review` instances associated with the `Viewer` instance.
  def viewer_reviews
    Review.all.select { |review| review.viewer == self }
  end

  # returns an array of `Movie` instances reviewed by the `Viewer` instance.
  def reviewed_movies
    viewer_reviews.map { |review| review.movie }
  end

  # returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review`     instance that has this `Viewer` and `Movie`), returns `false` otherwise
  def reviewed_movie?(beef)
    reviewed_movies.each do |movie|
      if movie.title == beef
        puts true
      else
        puts false
      end
    end
  end

  #   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
  #   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance

  # def rate_movie(beef, score)
  #   reviewed_movies.each do |movie|
  #     if movie.title != beef
  #       # (viewer, movie, rating) /// Review init
  #      Review.new(self, beef, score)
  #     else
  #       movie.rating = score
  #     end
  #   end
  # end
   
    








  
end # end of Viewer class
