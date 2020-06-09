# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

mia = Viewer.new("Mia")
lisa = Viewer.new("Lisa")
steve = Viewer.new("Steve")
sam = Viewer.new("Sam")

movie1 = Movie.new("Boyz In Da Hood")
movie2 = Movie.new("Boomerang")
movie3 = Movie.new("Blankman")
movie4 = Movie.new("A Lowdown Dirty Shame")
# movie5 = Movie.new("Bad Boys")
# movie6 = Movie.new("The Last Dragon")

review1 = Review.new(mia, movie1, 5)
review2 = Review.new(lisa, movie2, 4)
review3 = Review.new(steve, movie3, 3)
review4 = Review.new(sam, movie4, 2)
review5 = Review.new(lisa, movie1, 4)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
