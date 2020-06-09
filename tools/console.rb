# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
m1 = Movie.new("title")
m1.title=("Movie1")
m2 = Movie.new("Movie2")
m3 = Movie.new("Movie3")
m4 = Movie.new("Movie4")
m5 = Movie.new("Movie5")
m6 = Movie.new("Movie6")
m7 = Movie.new("Movie7")

v1 = Viewer.new("username")
v1.username=("Viewer1")
v2 = Viewer.new("Viewer2")
v3 = Viewer.new("Viewer3")
v4 = Viewer.new("Viewer4")
v5 = Viewer.new("Viewer5")
v6 = Viewer.new("Viewer6")
v7 = Viewer.new("Viewer7")

v1.rate_movie(m1, 1)
v1.rate_movie(m1, 5)
v1.rate_movie(m2, 3)
v2.rate_movie(m1, 4)
v3.rate_movie(m2, 3)

puts v1.reviews
puts v1.reviewed_movies
puts m1.reviews
puts m1.reviewers
puts m1.average_rating
puts Movie.highest_rated
puts v1.reviewed_movie?(m1)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
