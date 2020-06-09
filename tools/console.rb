# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

titanic = Movie.new("Titanic")
lion_king = Movie.new("Lion King")
movie_name = Movie.new("The Name")

tam = Viewer.new("Tam")
tom = Viewer.new("Tom")
tim = Viewer.new("Tim")

# Make tim review titanic
Review.new(tim, titanic, 3.0)
Review.new(tim, lion_king, 4.0)
Review.new(tim, movie_name, 5.0)

# Make tim review titanic
Review.new(tom, titanic, 2.0)
Review.new(tam, lion_king, 1.0)
Review.new(tom, movie_name, 3.0)






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
