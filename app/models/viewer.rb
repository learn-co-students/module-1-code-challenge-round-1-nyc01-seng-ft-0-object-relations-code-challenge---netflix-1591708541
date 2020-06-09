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

  def reviews
    Review.all.select do |r|
      r.viewer == self
    end
  end

  def reviewed_movies
    self.reviews.map do |r|
      r.movie
    end
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie)
      self.reviews.select do |r|
        r.movie == movie
      end[0].rating=(rating)
    else
      Review.new(self, movie, rating)
    end
  end
  
end
