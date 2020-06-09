# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

deadpool = Movie.new("Deadpool")
captain_america = Movie.new("Captain America")
iron_man = Movie.new("Iron Man")
hulk = Movie.new("Hulk")

travis = Viewer.new("travisprol")
christiana = Viewer.new("christianaalicante")

review1 = Review.new(travis, deadpool, 10.00)
review2 = Review.new(travis, captain_america, 7.00)
review3 = Review.new(travis, iron_man, 10.00)
review4 = Review.new(travis, hulk, 5.00)
review5 = Review.new(christiana, deadpool, 6.00)
review6 = Review.new(christiana, captain_america, 10.00)
review7 = Review.new(christiana, iron_man, 10.00)
review8 = Review.new(christiana, hulk, 7.00)


# ===== WARNING! DO NOT EDIT BELOW THrating4 = Rating.new(travis, hulk, 5)IS LINE ===== #
binding.pry
0