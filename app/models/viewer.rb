class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all #returns array of all view instances 
    @@all
  end

  def username #returns username -- not nececsarry with accessor? 
  end 

  def reviews #returns array of review instances associated with viewer instance
    Review.all.select do |review| #iterate through all reviews
      review.viewer == self #return ones that match a viewer instance
    end
  end 

  def reviewed_movies  #returns array of movie instances reviewed by viewer instance
    reviews.map(&:movie) #iterate through all reviews of a viewer and call movie reader method 
  end 

  def reviewed_movie? (movie)#returns true if viewer reviewed
  end 


  def rate_movie (movie, rating) 
    #if viewer and movie are not already associated, create new review instance
    #if viewer already reviewed, assign new rating to existing review instance
  end 
  
end
