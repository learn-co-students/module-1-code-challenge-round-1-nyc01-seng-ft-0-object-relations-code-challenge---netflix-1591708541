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
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    reviews.map do |review|
      review.viewer
    end
  end

  def average_rating
    reviews.select do |review|
      review.rating 
    end.sum / Movie.all.length
  end

  def self.highest_rated
    reviews.max_by do |review|
      review.rating
    end
  end


end
