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

  def rate_movie(movie, rating)
    movie_to_rate=reviews.select do |review|
      review.movie == movie
    end
    if movie_to_rate 
      review.rating = rating
    else
      Review.new(self, movie, rating)
    end
  end

  

  
end
