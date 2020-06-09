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
    reviews.map do |review|
      review.viewer
    end
  end

  def count_reviews
    reviews.count
  end

  def average_rating
    total_score = reviews.sum do |review|
      review.rating
    end
    average_rating = total_score/review.count_review
  end

  def Self.highest_rated
    reviews.max_by do |review|
      review.movie
    end
  end

end
