# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# VIEWER

josh = Viewer.new("agusjosh")
andy = Viewer.new("Redagus")
brian = Viewer.new("Bro692")
adam = Viewer.new("Adm99")
daniel = Viewer.new("frddy")

# MOVIE
avatar = Movie.new("Avatar")
starwars = Movie.new("Starwars")
clockwork_orange = Movie.new("Clockwork Orange")
toy_story = Movie.new("Movie")
fargo = Movie.new("Fargo")

# REVIEW
review1 = Review.new(josh, avatar, 4.9 )
review2 = Review.new(andy, starwars, 3 )
review3 = Review.new(andy, clockwork_orange, 5 )
review4 = Review.new(adam, toy_story, 4 )
review5 = Review.new(adam, fargo, 4 )
review5 = Review.new(adam, avatar, 2 )


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
