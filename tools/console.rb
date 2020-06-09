# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

trolls = Movie.new("Trolls")
scream = Movie.new("Scream")

alex = Viewer.new("alexpac27")
joe = Viewer.new("joe_dirt")

a_review = Review.new(alex,trolls,7)
b_review = Review.new(joe,trolls,4)
c_review = Review.new(alex,scream,5)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
