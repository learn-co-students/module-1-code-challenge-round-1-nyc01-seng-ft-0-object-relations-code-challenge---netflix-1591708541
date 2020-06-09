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
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    self.reviews.map do |review|
      review.viewer 
    end
  end

  def average_rating
    ratings_array = self.reviews.map do |review|
      review.rating
    end
    (ratings_array.reduce(0, :+)) / ratings_array.count
  end

  def self.highest_rated
  Review.all.max_by {|review| review.movie.average_rating}
  end
end


  

  



