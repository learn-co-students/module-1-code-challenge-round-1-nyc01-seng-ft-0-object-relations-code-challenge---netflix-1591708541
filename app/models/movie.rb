# A `Movie` has many `Review`s. A `Viewer` has many `Review`s. A `Review` belongs to a `Viewer` and belongs to a `Movie`.
# `Viewer` - `Movie` is a many to many relationship.

# Deliverables use the notation `#` for instance methods, and `.` for class methods.

#------------------------------------------------------------------------


  # - `Movie#initialize(title)`
  #   - `Movie` is initialized with a title (string)
  #   - title **can be** changed after the `Movie` is initialized

  # - `Movie#title`
  #   - returns the `Movie`'s title

  # - `Movie.all`
  #   - returns an array of all the `Movie` instances that have been initialized

  # - `Movie#reviews`
  #   - returns an array of all the `Review` instances for the `Movie`.

  # - `Movie#reviewers`
  #   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.

# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by the total number of ratings.

# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.

#------------------------------------------------------------------------


class Movie

  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  
  # returns the `Movie`'s title
  def movie_title
    Movie.all.find { |movie| movie.title == self.title}
  end

  # returns an array of all the `Review` instances for the `Movie`.
  def movie_reviews
    Review.all.select { |review| review.movie == self }
  end

  # returns an array of all of the `Viewer` instances that reviewed the `Movie`.
  def movie_reviewers
    movie_reviews.map { |review| review.viewer }
  end

  # - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by the total number of ratings.

  # def average_rating
  #   movie_reviews.map { |review| review.rating }
  # end







end # end of Movie class
