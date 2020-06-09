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

  def reviews
    self.all.map do |i|
      i.review == self
    end
  end

  def reviewers
    reviews.map do |i|
      i.viewer
    end
  end

  def average_rating
    avg = reviews.map do |i|
      i.rating
    end
    av.count / avg.sum
  end

  def self.highest_rated
    average_rating.max do |i|
      i.rating
    end
  end

end

# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by the total number of ratings.
# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.










### Object Relationship Methods
# - `Movie#reviews`
#   - returns an array of all the `Review` instances for the `Movie`.
# - `Movie#reviewers`
#   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.
