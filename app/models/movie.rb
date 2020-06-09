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
  




  ##  CLASS METHODS  ##
  def self.all
    @@all
  end


  

end
