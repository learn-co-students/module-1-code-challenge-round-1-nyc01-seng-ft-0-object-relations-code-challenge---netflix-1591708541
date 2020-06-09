# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
movie1 = Movie.new("Titanic")
movie2 = Movie.new("American Psycho")
movie3 = Movie.new("The Avengers")
movie4 = Movie.new("Fantasia")
movie5 = Movie.new("Snow White")
movie6 = Movie.new("Pulp Fiction")

viewer1 = Viewer.new("username_1")
viewer2 = Viewer.new("username_2")
viewer3 = Viewer.new("username_3")

review1 = Review.new(viewer1, movie1, 7)
review2 = Review.new(viewer3, movie1, 6)
review3 = Review.new(viewer2, movie1, 8)
review4 = Review.new(viewer3, movie2, 10)
review5 = Review.new(viewer2, movie3, 2)
review6 = Review.new(viewer1, movie5, 5)
review7 = Review.new(viewer3, movie6, 2)
review8 = Review.new(viewer2, movie4, 9)
review9 = Review.new(viewer1, movie6, 4)







# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
Pry.start