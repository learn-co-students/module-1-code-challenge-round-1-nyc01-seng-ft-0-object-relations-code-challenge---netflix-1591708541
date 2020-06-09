class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def reviews
    Review.all.select{|review| review.movie == self}
  end

  def reviewers
    self.reviews.map{|review| review.viewer}
  end

  def average_rating
    self.reviews.sum{|review| review.rating} / self.reviews.count
  end

  def self.all
    @@all
  end

  def self.highest_rated
    @@all.max{|movie_a, movie_b| movie_a.average_rating <=> movie_b.average_rating}
  end

end
