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

  def average_rating
    
  end

end
