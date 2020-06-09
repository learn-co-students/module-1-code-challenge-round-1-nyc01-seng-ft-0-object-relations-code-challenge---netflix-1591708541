require'pry'
class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  

  def reviews
  	Review.all.select{|review|review.viewer == self}
  end

  def reviewed_movies
  	reviews.map{|review| review.movie}
  end

  def reviewed_movie?(movie)
  	if reviewed_movies.find{|movie| movie.itself} == movie
  		true
  	else
  		false

  	end
  end

  def rate_movie(movie, rating)  
  	Review.new(self, movie, rating)
  	raiting = 
  	if reviewed_movie? == true 
  		reviews
  	end	
  end


# if this Viewer has already reviewed this Movie, assigns the new rating to the existing Review instance

end
