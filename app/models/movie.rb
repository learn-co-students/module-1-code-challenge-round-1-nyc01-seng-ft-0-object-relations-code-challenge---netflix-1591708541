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
    Review.all.select do |r|
        r.movie == self
    end
  end

  def reviewers
    self.reviews.map do |r|
      r.viewer
    end
  end

  def ratings
    self.reviews.map do |r|
      r.rating
    end
  end

  def average_rating
    ratingArray = self.ratings
    ratingArray.sum/ratingArray.count
  end

  def self.highest_rated
    aoh = Movie.all.map do |m|
      {m => m.average_rating}
    end
    aoh.max_by do |hash|
      hash.values[0]
    end.keys[0]
  end

end
