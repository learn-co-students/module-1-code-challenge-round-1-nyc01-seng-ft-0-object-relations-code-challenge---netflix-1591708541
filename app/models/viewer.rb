class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    # self.class.all << self    I have no idea what this is.
    @@all << self
  end

  def self.all
    @@all 
  end

  def reviews
    Review.all.select {|review| review.viewer == self}
  end

  def reviewed_movies
    Review.all.select {|review| review.movie if review.viewer == self}
  end

  def reviewed_movie?(movie)
    ###attempt3###
    self.reviews
  end
    

      ###attempt2###
  #   array = self.reviewed_movies
  #   binding.pry
  #   if array.title == movie
  #     true
  #   else
  #     false
  #   end
  # end
      ###attempt1###
    # self.reviews                # looking at previous method to see all of the reviews by a viewer
    # array = reviews.map {|review| review.viewer}
    # binding.pry
    # if array.username = self.username      
    #   true
    # else
    #   false
    # end
  # end

  def rate_movie(movie, rating)

  end
  
end