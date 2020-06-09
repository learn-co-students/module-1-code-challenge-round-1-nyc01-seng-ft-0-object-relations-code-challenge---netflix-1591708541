require "pry"

class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
    reviewed_movies = []
    Review.all.each do |review|
      if review.viewer == self
        reviewed_movies << review.movie
      end
    end
    reviewed_movies
  end

  def reviewed_movie?(movie)
    #see if this movie is included in the array produced by the reviewed_movies method above
      reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    Review.all.select do |review|
      if review.viewer == self
        review.rating = rating
        if review.viewer != self

        end
      end

  




end
