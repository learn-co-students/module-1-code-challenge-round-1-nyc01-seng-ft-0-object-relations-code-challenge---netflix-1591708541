class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def reviews
    Review.all.select{|review| review.viewer == self}
  end

  def reviewed_movies
    self.reviews.map{|review| review.movie}
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie)
      self.reviews.find{|review| review.movie = movie}.rating = rating
    else
      Review.new(self, movie, rating)
    end
  end

  def self.all
    @@all
  end
  
end
