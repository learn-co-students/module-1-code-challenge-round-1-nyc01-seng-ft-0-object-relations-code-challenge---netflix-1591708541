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
    self.reviews.map do |reviews|
      reviews.viewer
    end
  end

  def average_rating
    reviews.sum { |review| review.rating } / reviews.length
  end

  def self.highest_rating
    Movie.all.max_by do |movie|
      movie.average_rating
    end
  end

  # def average_rating
  #   a = self.reviews.map do |reviews|
  #     reviews.rating
  #   end
  #  a.sum(0.0)/a.size
  # end

  # def self.highest_rating
  #   a = Movie.all.map do |movie|
  #     movie.average_rating
  #   end
  #   a.max
  # end

end
