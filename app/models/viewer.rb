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
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
    reviews.map do |review|
      review.movie
    end
  end

  def reviewed_movie?(movie)
   movie_reviewed = reviews.select do |movie|
      review.movie == movie
   end
   if movie_reviewed
    true
   else 
    false
   end
  end

  

  
end
