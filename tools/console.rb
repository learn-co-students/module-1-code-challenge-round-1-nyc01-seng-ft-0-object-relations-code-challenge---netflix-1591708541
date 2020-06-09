# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

a = Viewer.new("A")
b = Viewer.new("B")

jaws = Movie.new("Jaws")
dk = Movie.new("Dark Knight")
fz = Movie.new("Frozen")

# initialize(viewer, movie, rating)
ajr = Review.new(a, jaws, 5)
adr = Review.new(a, dk, 5)
bjr = Review.new(b, jaws, 3)
bdr = Review.new(b, dk, 4)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
