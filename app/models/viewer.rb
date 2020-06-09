class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    # self.class.all << self    I have no idea what this is.
    @@all << self
  end

  def self.all
    @@all 
  end

  def reviews
    Review.all.select {|review| review.viewer == self}
  end

  def reviewed_movies
    Review.all.select {|review| review.movie if review.viewer == self}
  end
  
end