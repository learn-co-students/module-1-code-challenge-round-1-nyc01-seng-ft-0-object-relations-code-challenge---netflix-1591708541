class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  # returns an array of `Review` instances associated with the `Viewer` instance.

  def reviews
    Review.all.select{|review| review.viewer== self}
  end
  #Viewerreviewed_movies`
  #returns an array of `Movie` instances reviewed by the `Viewer` instance.

  def reviewed_movies
    reviews.map do |rating|
      rating.movie
    end
  end

  def reviewed_movie?(movie)  #i know that there is an if statment needed here that , and needed to iterate with each,kept breaking 
    reviewed_movies.each do |movies|
    if movie == reviewed.movie
      end
    end
 end













    


  
end