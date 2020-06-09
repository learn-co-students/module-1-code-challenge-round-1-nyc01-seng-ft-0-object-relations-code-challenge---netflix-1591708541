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

  #def title returns the movie title -- not necessary with accessor? 
  #end 

  def reviews #returns array of all review instances for movie
    Review.all.select do |review| #iterate through all reviews
      review.movie == self #return ones that match a movie instance
    end
  end 

  def reviewers #returns array of all viewer instances that reviewed movie
    reviews.map(&:viewer) #iterate through all reviews of a movie and call viewer reader method 
  end 

  def average_rating #return avg of all ratings for movie instance
    reviews.sum(0.0) / reviews.size #get sum of reviews array and divide it by total reviews
    #reference: https://andycroll.com/ruby/calculate-a-mean-average-from-a-ruby-array/ 
  end 

  def self.highest_rated #returns movie instance with highest avg rating 
    Review.all.max_by(1) {|movie| movie.average_rating}
    #max by is an iterator that pulls highest value | 1 means we just want THE highest
    #look at all moviews avg ratings
  end 

end
