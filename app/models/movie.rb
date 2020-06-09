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

def self.title
  @title
end 
def self.average_rating
  Review.rating / rating 
end

def highest_rated
  max=-1
  best_film=Review.rating
  if max<best_film
    max=best_film
  end
  max==best_film
end
