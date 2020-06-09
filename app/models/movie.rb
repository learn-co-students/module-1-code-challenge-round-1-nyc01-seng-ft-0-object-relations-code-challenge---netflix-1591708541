require 'pry'
class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
  	Review.all.select{|review|review.movie == self}
  end

  def reviewers
  	reviews.map{|movie| movie.viewer}
  end

  def average_rating
  	average_rating = reviews.map{|review|review.rating}
  	average_rating.instance_eval { reduce(:+) / size.to_f }
  end

  def self.highest_rated
  	max_rating = 0 
  	highest_rated = nil

	ratingarr = Review.all.select{|review|review.viewer}
		ratingarr2 = ratingarr.map{|viewer|viewer}

		p raitingarr2
    # rating

  end
end
