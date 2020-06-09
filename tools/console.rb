









# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

## let's add some movies
terminator = Movie.new('terminator')
incredible = Movie.new('incredible')

## let's add some viewers
berel = Viewer.new('berel')
tashawn = Viewer.new('tashawn')

## let's add some reviews
Review.new(viewer: berel, movie: terminator, rating: 4)
Review.new(viewer: tashawn, movie: terminator, rating: 5)
Review.new(viewer: berel, movie: incredible, rating: 4)
Review.new(viewer: tashawn, movie: incredible, rating: 3)
# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
