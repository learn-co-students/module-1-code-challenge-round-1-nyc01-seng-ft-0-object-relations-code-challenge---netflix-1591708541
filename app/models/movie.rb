class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select{ |review|
      review.movie == self
    }
  end

  def reviewers
    self.reviews.map{ |review|
      review.viewer
    }
  end

  def average_rating
    total = 0
    self.reviews.map { |review|
      total += review.rating
    }
    total.to_f/self.reviews.count #forcing floating point division here jic
  end

  def self.all
    @@all
  end

  def self.highest_rated
    self.all.max_by{ |movie| movie.average_rating } #returns movie instance with highest rating
  end

end
