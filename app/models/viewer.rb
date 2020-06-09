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

  #username -returns username -- not nececsarry with accessor 
  #end 

  def reviews #returns array of review instances associated with viewer instance
    Review.all.select do |review| #iterate through all reviews
      review.viewer == self #return ones that match a viewer instance
    end
  end 

  def reviewed_movies  #returns array of movie instances reviewed by viewer instance
    reviews.map(&:movie) #iterate through all reviews of a viewer and call movie reader method 
  end 

  def reviewed_movie? (movie)#returns true if viewer reviewed
    if reviewed_movies.include? movie #if the array of all movie instances reviewed by viewed instance includes the movie argument
      true #return true
    else 
      false
    end
  end

  def rate_movie (movie, rating) 
    if self.reviewed_movie? (movie) == false #if viewer and movie are not already associated
      #viewer instance and movie argument  
      Review.new(self, movie, rating)#create new review instance
    else #if viewer already reviewed, 
      #assign new rating to existing review instance
    end
  end
 
  
end
