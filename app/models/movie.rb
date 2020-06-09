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
    
    (ratings.sum.to_f / ratings.count) if ratings.count > 0## tashawn, why do I need the parenthses?
  end
  
  def self.highest_rated
    rs = all.map { |m| m.average_rating}.compact
    
    # binding.pry
    
    rs.max
  end
  




  ##  CLASS METHODS  ##
  def self.all
    @@all
  end


  

end
