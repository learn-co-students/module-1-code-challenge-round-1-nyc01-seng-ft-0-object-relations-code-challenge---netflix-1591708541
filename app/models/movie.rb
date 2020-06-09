class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    # A movie has many reviews and many viewers through reviews
    @title = title
    @@all << self
  end

  def reviews
    # returns an array of all the `Review` instances for the `Movie`.
    Review.all.select{|review| review.movie == self}
  end

  def reviewers
    # returns an array of all of the `Viewer` instances that reviewed the `Movie`
    reviews.map{|review| review.viewer}
  end

  def average_rating
    # returns the average of all ratings for the `Movie` instance
    number_of_reviews = reviews.size
    if number_of_reviews <= 0
      return 0
    end

    total_ratings = reviews.sum{|review| review.rating}
    (total_ratings / number_of_reviews).to_f
  end

  def self.highest_rated
    # returns the `Movie` instance with the highest average rating
    @@all.max_by{|movie| movie.average_rating}
  end

  def self.all
    @@all
  end

end
