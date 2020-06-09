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
    reviews.map { |r| r.rating }
  end
  
  def average_rating
    ratings.sum.to_f / ratings.count 
  end
  
  




  ##  CLASS METHODS  ##
  def self.all
    @@all
  end


  

end

end
