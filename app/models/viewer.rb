class Viewer
  attr_accessor :username

  @@all = []

  def initialize(hash)
    @username = hash[:username]
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.viewer == @username
    end
  end
  
  def reviewed_movies
    reviews.map do |movie|
      movie.movie
    end
  end

  def reviewed_movie?(movie)
    reviewed_movies.map do |movie1|
      if movie1 == movie
        return true 
      else false
      end
    end
  end

  def rate_movie(movie, rating)
    Review.all.select do ||


end
