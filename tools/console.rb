# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

class Review
  attr_accessor :viewer, :movie, :rating

  @@all = []

  def initialize(hash)
    @viewer = hash[:viewer]
    @movie = hash[:movie]
    @rating = hash[:rating]
    @@all << self
  end

  def self.all
      @@all
  end

end

movie1 = Movie.new({title: "Lost"})
movie2 = Movie.new({title: "Begin"})

review1 = Review.new({viewer: "JK", movie: "Lost", rating:5})
review3 = Review.new({viewer: "JK", movie: "Lost", rating:10})
review2 = Review.new({viewer: "RL", movie: "Begin", rating:3})

viewer1 = Viewer.new({username: "JK"})
viewer2=  Viewer.new({username: "RL"})


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
