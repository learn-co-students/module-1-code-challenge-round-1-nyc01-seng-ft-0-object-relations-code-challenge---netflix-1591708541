# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

moneyball = Movie.new("moneyball")
funball = Movie.new("funball")
theball = Movie.new("theball")
myball = Movie.new("myball")



brandon = Viewer.new("brandon")
eric = Viewer.new("eric")
adam = Viewer.new("adam")
tom = Viewer.new("tom")


good = Review.new("brandon","moneyball", "good")
excellent = Review.new("eric","funball","excellent")
bad = Review.new("adam","theball","bad")
okay = Review.new("tom","myball","okay")



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
