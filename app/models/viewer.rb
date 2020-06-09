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
    Review.all.select { |review| review.viewer == self }
  end

  def reviewed_movies
    reviews.map { |review| review.movie }
  end

  def reviewed_movie?(movie)
    reviews.any? { |review| review.movie == movie }
  end

  def rate_movie(movie, rating)
    Review.new(self, movie, rating) if !reviewed_movie?(movie)
    reviews.select { |review| review.movie == movie }
    .map{ |review| review.rating = rating }
  end

end
