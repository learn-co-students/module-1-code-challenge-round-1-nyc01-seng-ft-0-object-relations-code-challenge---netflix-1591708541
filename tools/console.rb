# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie_one = Movie.new("Okja")
movie_two = Movie.new("Snowpiercer")
movie_three = Movie.new("Parasite")

movie_one.title
Movie.all

viewer_one = Viewer.new("max")
viewer_two = Viewer.new("tashawn")
viewer_three = Viewer.new("eric")

viewer_one.username
Viewer.all

review_one = Review.new(viewer_one, movie_one, 8)
review_two = Review.new(viewer_two, movie_two, 7)
review_three = Review.new(viewer_three, movie_three, 10)

review_one.rating
Review.all

review_one.viewer
review_one.movie

viewer_one.reviews
viewer_one.reviewed_movies

movie_one.reviews
movie_one.reviewers

viewer_one.reviewed_movie?(movie_two)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
