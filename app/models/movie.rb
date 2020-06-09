class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select { |r| r.movie == self }
  end
  
  def reviewers
    reviews.map { |r| r.viewer }
  end

  def ratings
    reviews.map { |r| r.rating }.compact
  end
  
  def average_rating
    ratings.count > 0 ? (ratings.sum.to_f / ratings.count) : 0
  end
  
  
  
  
  
  
  ##  CLASS METHODS  ##
  def self.all
    @@all
  end
  
  def self.highest_rated
    all.max_by { |m| m.average_rating }
  end

  

end
