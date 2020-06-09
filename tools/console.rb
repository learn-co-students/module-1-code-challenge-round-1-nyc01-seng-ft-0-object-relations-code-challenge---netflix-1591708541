# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

### VIEWER /// (username)
corey   = Viewer.new("Carebear")
melissa = Viewer.new("Unicorn")
ryan    = Viewer.new("SadBoi")
alex    = Viewer.new("OKrush")


### MOVIE /// (title)
matrix     = Movie.new("The Matrix")
terminator = Movie.new("The Terminator")
blonde     = Movie.new("Legally Blonde")
snatch     = Movie.new("Snatch")

### REVIEW /// (viewer, movie, rating)
good        = Review.new(corey, matrix, 10)
very_good   = Review.new(melissa, terminator, 8)
mediocre    = Review.new(ryan, blonde, 4)
very_bad    = Review.new(alex, snatch, 6)
pretty_good = Review.new(corey, matrix, 5)
ok          = Review.new(corey, matrix, 6)
# expect 7 for matrix average

############### ACTION ITEMS ##################
# viewer.reviewed_movie? #=> boolean as well as movie object instead of just boolean


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
