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

  def reviews
    Review.all.select { |review| review.movie == self }
  end

  def reviewers
    reviews.map { |review| review.viewer }
  end

  def average_rating
    reviews.sum { |review| review.rating } / reviews.length
  end

  def self.highest_rated
    Movie.all.max_by { |movie| movie.average_rating }
  end

end
