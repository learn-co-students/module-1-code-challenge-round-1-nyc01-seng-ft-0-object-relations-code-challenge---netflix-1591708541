class Movie
  attr_accessor :title

  @@all = []

  def initialize(hash)
    @title = hash [:title]
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.movie == @title
    end
  end

  def reviewers
    reviews.map do |movie|
      movie.viewer
    end
  end

  def average_rating
    reviews.sum do |rating|
      int = rating.rating
      int/reviews.count
    end
  end

  def self.highest_rated
    average_rating.max do |rating|
      rating == self
    end
  end

end
