# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

oliver = Viewer.new("Oliver")
gloria = Viewer.new("Gloria")
daniel = Viewer.new ("Daniel")

office = Movie.new("The Office")
community = Movie.new("Community")
shameless = Movie.new("Shameless")
badboys = Movie.new("Badboys")
moneyheist = Movie.new("Money Heist")
coco = Movie.new("Coco")
brooklyn99 = Movie.new("Brooklyn 99")
sharktank = Movie.new("Sharktank")


reveiw1 = Review.new(oliver,office,10)
reveiw2 = Review.new(oliver,shameless,8)
reveiw3 = Review.new(gloria,badboys,7)
reveiw4 = Review.new(gloria,sharktank,9)
reveiw5 = Review.new(daniel,community,5)
reveiw6 = Review.new(daniel, moneyheist,10)
reveiw7 = Review.new(oliver, coco,6)
reveiw8 = Review.new(gloria, brooklyn99,2)







# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry

#ruby tools/console.rb