class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end


# - `Movie#reviews`
#   - returns an array of all the `Review` instances for the `Movie`.
  def reviews
    Review.all.select do |single_review|
      single_review.movie == self 
    end
  end

# - `Movie#reviewers`
#   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.
  def reviewers
    reviews.map do |review|
      review.viewer
    end
  end


#   `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide
#  by the total number of ratings.

  def average_rating
    reviews.sum {|ratings| ratings.rating} / reviews.size
  end

# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.
  def self.highest_rated
    Review.all.max_by {|review| review.rating.size / review.rating}
  end
end
