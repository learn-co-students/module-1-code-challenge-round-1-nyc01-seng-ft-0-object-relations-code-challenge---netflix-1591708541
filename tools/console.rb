# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

chaim = Viewer.new("chaim")
luzy = Viewer.new("luzy")
mendy = Viewer.new("mendy")
moosh = Viewer.new("moosh")

titanic = Movie.new("titanic")
frozen = Movie.new("frozen")
shawshank = Movie.new("shawshank")
rookie = Movie.new("rookie")

review1 = Review.new(chaim, titanic, 4)
review2 = Review.new(luzy, frozen, 5)
review3 = Review.new(mendy, shawshank, 4)
review4 = Review.new(moosh, rookie, 3)
review5 = Review.new(mendy, titanic, 5)
review6 = Review.new(luzy, rookie, 4)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
