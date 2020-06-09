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
    Review.all.select { |r| r.viewer == self}
  end
  
  def reviewed_movies
    reviews.map { |r| r.movie}
  end

  def reviewed_movie?(movie)
    movie.reviews.any? { |r| r.viewer == self }
  end

  def rate_movie(args)
    Rating.new(viewer: self, movie: args[:movie], rating: args[:rating])
  end
  
  

  
end
