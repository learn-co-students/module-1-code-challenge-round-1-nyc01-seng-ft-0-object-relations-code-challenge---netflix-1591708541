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

	all_scores = Review.all.map{|review|review.rating}
	all_scores.max_by{|score|}

  end
end



  # 	h = {}

  # 	all_viewers = Review.all.map{|review|review.viewer}
  # 	all_reviews = Review.all.map{|review|review.rating}


  # 	if all_viewers == true
  # 		"hello"
  # 	else
		# hash h.merge!(all_viewers all_reviews) 
  # 	end
