class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all #returns array of all movie instances 
    @@all
  end

  def title #returns the movie title -- not necessary with accessor? 
  end 

  def reviews #returns array of all review instances for movie
    Review.all.select do |review| #iterate through all reviews
      review.movie == self #return ones that match a movie instance
    end
  end 

  def reviewers #returns array of all viewer instances that reviewed movie
    reviews.map(&:viewer) #iterate through all reviews of a movie and call viewer reader method 
  end 

  def average_rating #return avg of all ratings for movie instance
  end 

  def highest_rated #returns movie instance with highest avg rating 
  end 

end
