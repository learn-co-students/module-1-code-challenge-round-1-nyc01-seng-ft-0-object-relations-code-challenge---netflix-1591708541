class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews 
    Review.all.select { |review| review.movie == self}
  end 

  def viewers 
    reviews.map do |review|
      review.viewer
    end 
  end 

  def average_rating
    sum = 0
    average = 0
    reviews.each do |review|
      sum += review.rating
    end 
      sum 
      average = sum/reviews.length 
      return average
  end 
  
  def self.highest_rated
    Movie.all.max_by |movie|
     movie.average_rating
  end 

end
# `Movie#average_rating`
# - returns the average of all ratings for the `Movie` instance
# - to average ratings, add all ratings together and divide by the total number of ratings.
# - `Movie.highest_rated`
# - returns the `Movie` instance with the highest average rating.