# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#############################################
### Movie ###
parasite = Movie.new("Parasite")
it = Movie.new("It")


#############################################
### Viewer ###
ashley = Viewer.new("Ashley")
linda = Viewer.new("Linda")
sam = Viewer.new("Sam")
sue = Viewer.new("Sue")
lee = Viewer.new("Lee")
#############################################
### Review ###
review_one = Review.new(ashley, parasite, 5)
review_two = Review.new(linda, it, 4)
review_three = Review.new(sam, parasite, 3)
review_four = Review.new(sue, it, 2)
review_five = Review.new(lee, parasite, 1)







# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
