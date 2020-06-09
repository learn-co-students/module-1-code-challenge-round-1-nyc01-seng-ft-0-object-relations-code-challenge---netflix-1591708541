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

  def self.username
    @username
  end 

  def reviewed_movie?(movie)
    if review==review.viewer &&review.movie
      true
    else
      false
    end 
  end 

  def rate_movie(movie, rating)
    !if self.movie
    Review.new
  else 
    Review.rating
  end
end

  
end
