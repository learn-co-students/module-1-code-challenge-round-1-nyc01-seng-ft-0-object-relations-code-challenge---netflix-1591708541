# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new("Jaws")
movie2 = Movie.new("Pan's Labrynth")
movie3 = Movie.new("Gladiator")

viewer1 = Viewer.new("Kate")
viewer2 = Viewer.new("Paola")


review1 = Review.new(viewer1, movie2, 8)
review2 = Review.new(viewer2, movie2, 10)
review3 = Review.new(viewer2, movie3, 9)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
