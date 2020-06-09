# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

class Review
  attr_accessor :viewer, :movie, :rating

  @@all = []

  def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating
      @@all << self
  end

  def self.all
      @@all
  end

end

movie1 = Movie.new("Lost")
movie2 = Movie.new("Begin")

review1 = Review.new("JK", "Lost", 5)
review2 = Review.new("RL", "Begin", 3)

viewer1 = Viewer.new("JK")
viewer2=  Viewer.new("RL")


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
