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
  	if reviewed_movies.find{|film| film == movie} 
  		true
  	else
  		false

  	end
  end

  def ratings
  	reviews.map{|review| review.rating}
  end

  def rate_movie(movie, rating)  
  	# if reviewed_movie? == true
  	# 	movie.raiting = rating
  	# else
  	  	Review.new(self, movie, rating)
  	# end	
  end


# if this Viewer has already reviewed this Movie, assigns the new rating to the existing Review instance

end
