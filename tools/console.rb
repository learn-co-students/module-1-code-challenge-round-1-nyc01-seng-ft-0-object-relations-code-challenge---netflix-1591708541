# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

star_wars = Movie.new("star wars")
knight = Movie.new("knight")
light = Movie.new("light")

josh = Viewer.new("josh")
jonny = Viewer.new("jonny")
mat = Viewer.new("mat")

review1 = Review.new(josh, knight, 8)
review1 = Review.new(josh, light, 5)
review1 = Review.new(jonny, star_wars, 6)
review1 = Review.new(mat, light, 8)
review1 = Review.new(mat, knight, 8)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
